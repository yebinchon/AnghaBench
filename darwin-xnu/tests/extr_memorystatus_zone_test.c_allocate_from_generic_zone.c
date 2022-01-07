
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int mach_port_t ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_RIGHT_RECEIVE ;
 int SIGUSR1 ;
 int getpid () ;
 int getppid () ;
 int kill (int ,int ) ;
 scalar_t__ mach_port_allocate (int ,int ,int *) ;
 int mach_task_self () ;
 int pause () ;
 int printf (char*,int,...) ;

__attribute__((used)) static void allocate_from_generic_zone(void)
{
 uint64_t i = 0;

 printf("[%d] Allocating mach_ports\n", getpid());
 for (i = 0; ; i++) {
  mach_port_t port;

  if ((mach_port_allocate(mach_task_self(), MACH_PORT_RIGHT_RECEIVE, &port)) != KERN_SUCCESS) {
   break;
  }
 }
 printf("[%d] Number of allocations: %lld\n", getpid(), i);


 kill(getppid(), SIGUSR1);

 while (1) {
  pause();
 }
}
