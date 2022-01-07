
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcpip_init_done_fn ;


 scalar_t__ ERR_OK ;
 int LWIP_ASSERT (char*,int ) ;
 int TCPIP_MBOX_SIZE ;
 int TCPIP_THREAD_NAME ;
 int TCPIP_THREAD_PRIO ;
 int TCPIP_THREAD_STACKSIZE ;
 int lock_tcpip_core ;
 int lwip_init () ;
 int mbox ;
 scalar_t__ sys_mbox_new (int *,int ) ;
 scalar_t__ sys_mutex_new (int *) ;
 int sys_thread_new (int ,int ,int *,int ,int ) ;
 int tcpip_init_done ;
 void* tcpip_init_done_arg ;
 int tcpip_thread ;

void
tcpip_init(tcpip_init_done_fn initfunc, void *arg)
{
  lwip_init();

  tcpip_init_done = initfunc;
  tcpip_init_done_arg = arg;
  if(sys_mbox_new(&mbox, TCPIP_MBOX_SIZE) != ERR_OK) {
    LWIP_ASSERT("failed to create tcpip_thread mbox", 0);
  }






  sys_thread_new(TCPIP_THREAD_NAME, tcpip_thread, ((void*)0), TCPIP_THREAD_STACKSIZE, TCPIP_THREAD_PRIO);
}
