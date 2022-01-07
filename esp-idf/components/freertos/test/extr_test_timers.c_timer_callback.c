
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimerHandle_t ;


 int printf (char*,int ,int volatile*,int volatile) ;
 scalar_t__ pvTimerGetTimerID (int ) ;

__attribute__((used)) static void timer_callback(TimerHandle_t timer)
{
    volatile int *count;
    count = (volatile int *)pvTimerGetTimerID( timer );
    (*count)++;
    printf("Callback timer %p count %p = %d\n", timer, count, *count);
}
