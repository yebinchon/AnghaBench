
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep (int) ;

void plat_sleep_ms(int ms)
{
 usleep(ms * 1000);
}
