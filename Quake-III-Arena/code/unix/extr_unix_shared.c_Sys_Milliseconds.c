
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int curtime ;
 int gettimeofday (struct timeval*,int *) ;
 int sys_timeBase ;

int Sys_Milliseconds (void)
{
 struct timeval tp;

 gettimeofday(&tp, ((void*)0));

 if (!sys_timeBase)
 {
  sys_timeBase = tp.tv_sec;
  return tp.tv_usec/1000;
 }

 curtime = (tp.tv_sec - sys_timeBase)*1000 + tp.tv_usec/1000;

 return curtime;
}
