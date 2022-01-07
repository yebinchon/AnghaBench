
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_zones; int * zone_names; } ;


 int SIGKILL ;
 int T_LOG (char*,...) ;
 int * child_pids ;
 TYPE_1__ current_test ;
 int dispatch_source_cancel (int *) ;
 int dispatch_source_cancel_and_wait (int *) ;
 int * ds_signal ;
 int * ds_timer ;
 int kill (int ,int ) ;
 int ktrace_end (int *,int) ;
 int mach_host_self () ;
 int mach_zone_force_gc (int ) ;
 int num_children ;
 int print_zone_info (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * session ;
 int sleep (int) ;
 int test_ending ;
 int test_ending_mtx ;
 scalar_t__ waitpid (int ,int*,int ) ;
 int within_dispatch_signal_handler ;
 int within_dispatch_timer_handler ;
 int * zone_info_array ;

__attribute__((used)) static void cleanup_and_end_test(void)
{
 int i;





 pthread_mutex_lock(&test_ending_mtx);
 if (test_ending) {
  pthread_mutex_unlock(&test_ending_mtx);
  return;
 }
 test_ending = 1;
 pthread_mutex_unlock(&test_ending_mtx);

 T_LOG("Number of processes spawned: %d", num_children);
 T_LOG("Cleaning up...");


 if (ds_timer != ((void*)0) && !within_dispatch_timer_handler) {
  dispatch_source_cancel(ds_timer);
 }


 if (ds_signal != ((void*)0) && !within_dispatch_signal_handler) {
  dispatch_source_cancel_and_wait(ds_signal);
 }


 for (i = 0; i < num_children; i++) {
  kill(child_pids[i], SIGKILL);




  sleep(1);
 }
 for (i = 0; i < num_children; i++) {
  int status = 0;
  if (waitpid(child_pids[i], &status, 0) < 0) {
   T_LOG("waitpid returned status %d", status);
  }
 }
 sleep(1);


 mach_zone_force_gc(mach_host_self());


 if (session != ((void*)0)) {
  ktrace_end(session, 1);
 }

 for (i = 0; i < current_test.num_zones; i++) {
  print_zone_info(&(current_test.zone_names[i]), &(zone_info_array[i]));
 }
}
