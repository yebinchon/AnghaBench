
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFRunLoopSourceSignal (scalar_t__) ;
 scalar_t__ btstack_quit_source ;
 int * btstack_thread ;
 int btstack_thread_func ;
 int btstack_try_load () ;
 int * sthread_create (int ,int *) ;
 int sthread_join (int *) ;

__attribute__((used)) static void btstack_set_poweron(bool on)
{
   if (!btstack_try_load())
      return;

   if (on && !btstack_thread)
      btstack_thread = sthread_create(btstack_thread_func, ((void*)0));
   else if (!on && btstack_thread && btstack_quit_source)
   {



      sthread_join(btstack_thread);
      btstack_thread = ((void*)0);
   }
}
