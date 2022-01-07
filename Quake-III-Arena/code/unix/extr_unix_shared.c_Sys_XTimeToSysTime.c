
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;


 int Com_Printf (char*,int) ;
 int Sys_Milliseconds () ;
 TYPE_1__* in_subframe ;
 int sys_timeBase ;

int Sys_XTimeToSysTime (unsigned long xtime)
{
 int ret, time, test;

 if (!in_subframe->value)
 {

  return Sys_Milliseconds();
 }
  ret = xtime - (unsigned long)(sys_timeBase*1000);
  time = Sys_Milliseconds();
  test = time - ret;

  if (test < 0 || test > 30)
  {
    return time;
  }

 return ret;
}
