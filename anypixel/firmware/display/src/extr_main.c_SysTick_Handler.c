
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LocalTime ;
 scalar_t__ SYSTEMTICK_PERIOD_MS ;
 int TLC59401_Update () ;

void SysTick_Handler(void)
{

    LocalTime += SYSTEMTICK_PERIOD_MS;
    TLC59401_Update();
}
