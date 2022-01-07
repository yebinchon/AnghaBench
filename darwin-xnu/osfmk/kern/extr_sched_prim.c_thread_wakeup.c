
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;


 int THREAD_AWAKENED ;
 int thread_wakeup_with_result (int ,int ) ;

void
thread_wakeup(
       event_t x)
{
       thread_wakeup_with_result(x, THREAD_AWAKENED);
}
