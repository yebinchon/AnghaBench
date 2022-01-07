
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _runloop_msg_queue_lock ;
 int msg_queue_free (int *) ;
 int * runloop_msg_queue ;
 int runloop_msg_queue_lock () ;
 int runloop_msg_queue_unlock () ;
 int slock_free (int *) ;

__attribute__((used)) static void retroarch_msg_queue_deinit(void)
{
   runloop_msg_queue_lock();

   if (!runloop_msg_queue)
      return;

   msg_queue_free(runloop_msg_queue);

   runloop_msg_queue_unlock();





   runloop_msg_queue = ((void*)0);
}
