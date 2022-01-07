
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct bufattr {int ba_flags; } ;
struct _throttle_io_info_t {int throttle_io_count; int * throttle_last_IO_timestamp; int * throttle_window_start_timestamp; int * throttle_inflight_count; int * throttle_last_IO_pid; scalar_t__ throttle_disabled; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int p_pid; } ;
struct TYPE_7__ {int uu_throttle_bc; } ;


 int BA_IO_TIER_UPGRADE ;
 int BA_STRATEGY_TRACKED_IO ;
 int B_PASSIVE ;
 int DBG_FUNC_NONE ;
 int DBG_THROTTLE ;
 int FALSE ;
 int FSDBG_CODE (int ,int ) ;
 int GET_BUFATTR_IO_TIER (struct bufattr*) ;
 scalar_t__ ISSET (int,int ) ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int,int ,int ,int ) ;
 int OPEN_THROTTLE_WINDOW ;
 int OSAddAtomic (int,int *) ;
 int OSIncrementAtomic (int *) ;
 int SET (int,int ) ;
 int THROTTLE_LEVEL_NONE ;
 int THROTTLE_LEVEL_THROTTLED ;
 TYPE_6__* current_proc () ;
 int current_thread () ;
 TYPE_1__* get_bsdthread_info (int ) ;
 scalar_t__ lowpri_throttle_enabled ;
 int microuptime (int *) ;
 int proc_selfpid () ;
 int throttle_get_thread_throttle_level (TYPE_1__*) ;
 int throttle_info_set_initial_window (TYPE_1__*,struct _throttle_io_info_t*,int ,scalar_t__) ;

__attribute__((used)) static
int throttle_info_update_internal(struct _throttle_io_info_t *info, uthread_t ut, int flags, boolean_t isssd, boolean_t inflight, struct bufattr *bap)
{
 int thread_throttle_level;

 if (lowpri_throttle_enabled == 0 || info->throttle_disabled)
  return THROTTLE_LEVEL_NONE;

 if (ut == ((void*)0))
  ut = get_bsdthread_info(current_thread());

 if (bap && inflight && !ut->uu_throttle_bc) {
  thread_throttle_level = GET_BUFATTR_IO_TIER(bap);
  if (ISSET(bap->ba_flags, BA_IO_TIER_UPGRADE)) {
   thread_throttle_level--;
  }
 } else {
  thread_throttle_level = throttle_get_thread_throttle_level(ut);
 }

 if (thread_throttle_level != THROTTLE_LEVEL_NONE) {
        if(!ISSET(flags, B_PASSIVE)) {
   info->throttle_last_IO_pid[thread_throttle_level] = proc_selfpid();
   if (inflight && !ut->uu_throttle_bc) {
    if (((void*)0) != bap) {
     SET(bap->ba_flags, BA_STRATEGY_TRACKED_IO);
    }
    OSIncrementAtomic(&info->throttle_inflight_count[thread_throttle_level]);
   } else {
    microuptime(&info->throttle_window_start_timestamp[thread_throttle_level]);
   }
   KERNEL_DEBUG_CONSTANT((FSDBG_CODE(DBG_THROTTLE, OPEN_THROTTLE_WINDOW)) | DBG_FUNC_NONE,
     current_proc()->p_pid, thread_throttle_level, 0, 0, 0);
  }
  microuptime(&info->throttle_last_IO_timestamp[thread_throttle_level]);
 }


 if (thread_throttle_level >= THROTTLE_LEVEL_THROTTLED) {
         OSAddAtomic(1, &info->throttle_io_count);

  throttle_info_set_initial_window(ut, info, FALSE, isssd);
 }

 return thread_throttle_level;
}
