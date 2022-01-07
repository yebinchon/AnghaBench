
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ bootstrap_look_up (int ,int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int mach_error (char*,scalar_t__) ;
 int mach_task_self () ;
 int num_servers ;
 int * server_port_name ;
 int stderr ;
 scalar_t__ task_get_bootstrap_port (int ,int *) ;
 int usleep (int) ;

__attribute__((used)) static void
wait_for_servers(void)
{
 int i;
 int retry_count = 10;
 mach_port_t bsport, servport;
 kern_return_t ret;


 ret = task_get_bootstrap_port(mach_task_self(), &bsport);
 if (KERN_SUCCESS != ret) {
  mach_error("task_get_bootstrap_port(): ", ret);
  exit(1);
 }

 while (retry_count-- > 0) {
  for (i = 0; i < num_servers; i++) {
   ret = bootstrap_look_up(bsport,
     server_port_name[i],
     &servport);
   if (ret != KERN_SUCCESS) {
    break;
   }
  }
  if (ret == KERN_SUCCESS)
   return;
  usleep(100 * 1000);
 }
 fprintf(stderr, "Server(s) failed to register\n");
 exit(1);
}
