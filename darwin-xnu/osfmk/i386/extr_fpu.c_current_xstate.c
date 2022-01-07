
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xstate_t ;


 int current_thread () ;
 int thread_xstate (int ) ;

xstate_t
current_xstate(void)
{
 return thread_xstate(current_thread());
}
