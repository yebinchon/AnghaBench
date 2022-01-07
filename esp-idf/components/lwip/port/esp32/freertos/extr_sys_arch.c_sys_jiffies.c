
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;


 int xTaskGetTickCount () ;

u32_t
sys_jiffies(void)
{
  return xTaskGetTickCount();
}
