
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulonglong ;
struct tms {int dummy; } ;
typedef int NXTime_t ;


 int GetTickCount () ;
 int NXGetTime (int ,int ,int *) ;
 int NX_SINCE_BOOT ;
 int NX_TICKS ;
 int times (struct tms*) ;

ulonglong my_timer_ticks(void)
{
  return 0;

}
