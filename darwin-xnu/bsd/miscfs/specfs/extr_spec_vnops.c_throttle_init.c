
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_call_param_t ;
typedef int thread_call_func_t ;
struct _throttle_io_info_t {int throttle_next_wake_level; scalar_t__ throttle_is_fusion_with_priority; scalar_t__ throttle_disabled; scalar_t__* throttle_inflight_count; scalar_t__* throttle_last_IO_pid; int * throttle_uthlist; int throttle_timer_call; int throttle_lock; } ;
typedef int iosched ;


 int LOWPRI_MAX_NUM_DEV ;
 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 int TAILQ_INIT (int *) ;
 int THROTTLE_LEVEL_END ;
 struct _throttle_io_info_t* _throttle_io_info ;
 int iosched_enabled ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 int thread_call_allocate (int ,int ) ;
 int throttle_init_throttle_window () ;
 int throttle_lock_attr ;
 int throttle_lock_grp ;
 int throttle_lock_grp_attr ;
 scalar_t__ throttle_timer ;
 int vm_io_reprioritize_init () ;

void
throttle_init(void)
{
        struct _throttle_io_info_t *info;
        int i;
 int level;






        throttle_lock_grp_attr = lck_grp_attr_alloc_init();
        throttle_lock_grp = lck_grp_alloc_init("throttle I/O", throttle_lock_grp_attr);


 throttle_init_throttle_window();




        throttle_lock_attr = lck_attr_alloc_init();

 for (i = 0; i < LOWPRI_MAX_NUM_DEV; i++) {
         info = &_throttle_io_info[i];

         lck_mtx_init(&info->throttle_lock, throttle_lock_grp, throttle_lock_attr);
  info->throttle_timer_call = thread_call_allocate((thread_call_func_t)throttle_timer, (thread_call_param_t)info);

  for (level = 0; level <= THROTTLE_LEVEL_END; level++) {
   TAILQ_INIT(&info->throttle_uthlist[level]);
   info->throttle_last_IO_pid[level] = 0;
   info->throttle_inflight_count[level] = 0;
  }
  info->throttle_next_wake_level = THROTTLE_LEVEL_END;
  info->throttle_disabled = 0;
  info->throttle_is_fusion_with_priority = 0;
 }
}
