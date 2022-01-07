
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ T1_MODE ;
 int iWakeupThread (int ) ;
 int sleeping_thread_id ;

__attribute__((used)) static int t1_interrupt_handler(int ca)
{
 iWakeupThread(sleeping_thread_id);
 T1_MODE = 0;

 return -1;
}
