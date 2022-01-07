
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_64t ;
struct tm {int dummy; } ;
typedef int SYSTEMTIME ;


 int SystemToTm (struct tm*,int *) ;
 int TmToTime (struct tm*) ;

time_64t SystemToTime(SYSTEMTIME *st)
{
 struct tm t;

 if (st == ((void*)0))
 {
  return 0;
 }

 SystemToTm(&t, st);
 return TmToTime(&t);
}
