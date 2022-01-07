
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_64t ;
struct tm {int dummy; } ;
typedef int SYSTEMTIME ;


 int TimeToTm (struct tm*,int ) ;
 int TmToSystem (int *,struct tm*) ;

void TimeToSystem(SYSTEMTIME *st, time_64t t)
{
 struct tm tmp;

 if (st == ((void*)0))
 {
  return;
 }

 TimeToTm(&tmp, t);
 TmToSystem(st, &tmp);
}
