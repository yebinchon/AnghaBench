
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef scalar_t__ uint32_t ;
struct _throttle_io_info_t {scalar_t__ throttle_io_period_num; int* throttle_io_periods; int * throttle_last_IO_pid; int throttle_io_count; int throttle_lock; int * throttle_uthlist; } ;
typedef int caddr_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ uu_lowpri_window; int uu_throttle_bc; int uu_on_throttlelist; int uu_was_rethrottled; char* uu_wmesg; int uu_is_throttled; struct _throttle_io_info_t* uu_throttle_info; int uu_rethrottle_lock; int uu_thread; } ;


 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_NONE ;
 int DBG_FUNC_START ;
 int DBG_THROTTLE ;
 int FALSE ;
 int FSDBG_CODE (int ,int) ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int,int ,int,int ) ;
 int PROCESS_THROTTLED ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int THROTTLE_ENGAGED ;
 int THROTTLE_LEVEL_END ;
 void* THROTTLE_LEVEL_NONE ;
 int THROTTLE_LEVEL_START ;
 int THROTTLE_LEVEL_THROTTLED ;
 int TRUE ;
 int assert (int) ;
 int assert_wait (int ,int ) ;
 int current_thread () ;
 TYPE_1__* get_bsdthread_info (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_mtx_yield (int *) ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int ml_set_interrupts_enabled (int ) ;
 int proc_selfpid () ;
 int thread_block (int ) ;
 int thread_tid (int ) ;
 int throttle_add_to_list (struct _throttle_io_info_t*,TYPE_1__*,int,int ) ;
 int throttle_info_rel (struct _throttle_io_info_t*) ;
 int throttle_io_will_be_throttled_internal (struct _throttle_io_info_t*,int*,int*) ;
 int throttle_update_proc_stats (int ,int) ;
 int * throttle_windows_msecs ;
 int * throttled_count ;
 int uu_throttlelist ;

uint32_t
throttle_lowpri_io(int sleep_amount)
{
 uthread_t ut;
 struct _throttle_io_info_t *info;
 int throttle_type = 0;
 int mylevel = 0;
 int throttling_level = THROTTLE_LEVEL_NONE;
 int sleep_cnt = 0;
 uint32_t throttle_io_period_num = 0;
 boolean_t insert_tail = TRUE;
 boolean_t s;

 ut = get_bsdthread_info(current_thread());

 if (ut->uu_lowpri_window == 0)
  return (0);

 info = ut->uu_throttle_info;

 if (info == ((void*)0)) {
  ut->uu_throttle_bc = 0;
  ut->uu_lowpri_window = 0;
  return (0);
 }
 lck_mtx_lock(&info->throttle_lock);
 assert(ut->uu_on_throttlelist < THROTTLE_LEVEL_THROTTLED);

 if (sleep_amount == 0)
  goto done;

 if (sleep_amount == 1 && !ut->uu_throttle_bc)
  sleep_amount = 0;

 throttle_io_period_num = info->throttle_io_period_num;

 ut->uu_was_rethrottled = 0;

 while ( (throttle_type = throttle_io_will_be_throttled_internal(info, &mylevel, &throttling_level)) ) {

  if (throttle_type == THROTTLE_ENGAGED) {
   if (sleep_amount == 0)
    break;
   if (info->throttle_io_period_num < throttle_io_period_num)
    break;
   if ((info->throttle_io_period_num - throttle_io_period_num) >= (uint32_t)sleep_amount)
    break;
  }




  if (ut->uu_on_throttlelist >= THROTTLE_LEVEL_THROTTLED && ut->uu_on_throttlelist != mylevel) {






   TAILQ_REMOVE(&info->throttle_uthlist[ut->uu_on_throttlelist], ut, uu_throttlelist);
   ut->uu_on_throttlelist = THROTTLE_LEVEL_NONE;
   insert_tail = TRUE;
  }
  if (ut->uu_on_throttlelist < THROTTLE_LEVEL_THROTTLED) {
   if (throttle_add_to_list(info, ut, mylevel, insert_tail) == THROTTLE_LEVEL_END)
    goto done;
  }
  assert(throttling_level >= THROTTLE_LEVEL_START && throttling_level <= THROTTLE_LEVEL_END);

  s = ml_set_interrupts_enabled(FALSE);
  lck_spin_lock(&ut->uu_rethrottle_lock);





  if (ut->uu_was_rethrottled) {

   lck_spin_unlock(&ut->uu_rethrottle_lock);
   ml_set_interrupts_enabled(s);
   lck_mtx_yield(&info->throttle_lock);

   KERNEL_DEBUG_CONSTANT((FSDBG_CODE(DBG_FSRW, 103)), thread_tid(ut->uu_thread), ut->uu_on_throttlelist, 0, 0, 0);

   ut->uu_was_rethrottled = 0;
   continue;
  }
  KERNEL_DEBUG_CONSTANT((FSDBG_CODE(DBG_THROTTLE, PROCESS_THROTTLED)) | DBG_FUNC_NONE,
    info->throttle_last_IO_pid[throttling_level], throttling_level, proc_selfpid(), mylevel, 0);

  if (sleep_cnt == 0) {
   KERNEL_DEBUG_CONSTANT((FSDBG_CODE(DBG_FSRW, 97)) | DBG_FUNC_START,
           throttle_windows_msecs[mylevel], info->throttle_io_periods[mylevel], info->throttle_io_count, 0, 0);
   throttled_count[mylevel]++;
  }
  ut->uu_wmesg = "throttle_lowpri_io";

  assert_wait((caddr_t)&ut->uu_on_throttlelist, THREAD_UNINT);

  ut->uu_is_throttled = 1;
  lck_spin_unlock(&ut->uu_rethrottle_lock);
  ml_set_interrupts_enabled(s);

  lck_mtx_unlock(&info->throttle_lock);

  thread_block(THREAD_CONTINUE_NULL);

  ut->uu_wmesg = ((void*)0);

  ut->uu_is_throttled = 0;
  ut->uu_was_rethrottled = 0;

  lck_mtx_lock(&info->throttle_lock);

  sleep_cnt++;

  if (sleep_amount == 0)
   insert_tail = FALSE;
  else if (info->throttle_io_period_num < throttle_io_period_num ||
    (info->throttle_io_period_num - throttle_io_period_num) >= (uint32_t)sleep_amount) {
   insert_tail = FALSE;
   sleep_amount = 0;
  }
 }
done:
 if (ut->uu_on_throttlelist >= THROTTLE_LEVEL_THROTTLED) {
  TAILQ_REMOVE(&info->throttle_uthlist[ut->uu_on_throttlelist], ut, uu_throttlelist);
  ut->uu_on_throttlelist = THROTTLE_LEVEL_NONE;
 }
 lck_mtx_unlock(&info->throttle_lock);

 if (sleep_cnt) {
  KERNEL_DEBUG_CONSTANT((FSDBG_CODE(DBG_FSRW, 97)) | DBG_FUNC_END,
          throttle_windows_msecs[mylevel], info->throttle_io_periods[mylevel], info->throttle_io_count, 0, 0);






  throttle_update_proc_stats(info->throttle_last_IO_pid[throttling_level], sleep_cnt);
 }

 ut->uu_throttle_info = ((void*)0);
 ut->uu_throttle_bc = 0;
 ut->uu_lowpri_window = 0;

 throttle_info_rel(info);

 return (sleep_cnt);
}
