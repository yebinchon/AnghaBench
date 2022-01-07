
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Time_Update () ;

void SysTick_Handler(void)
{

  Time_Update();
}
