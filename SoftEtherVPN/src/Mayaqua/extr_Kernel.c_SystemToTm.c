
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_isdst; void* tm_sec; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; void* tm_year; } ;
struct TYPE_3__ {int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 void* MAKESURE (int ,int,int) ;
 int NormalizeTm (struct tm*) ;
 int Zero (struct tm*,int) ;

void SystemToTm(struct tm *t, SYSTEMTIME *st)
{

 if (t == ((void*)0) || st == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(struct tm));
 t->tm_year = MAKESURE(st->wYear, 1970, 2099) - 1900;
 t->tm_mon = MAKESURE(st->wMonth, 1, 12) - 1;
 t->tm_mday = MAKESURE(st->wDay, 1, 31);
 t->tm_hour = MAKESURE(st->wHour, 0, 23);
 t->tm_min = MAKESURE(st->wMinute, 0, 59);
 t->tm_sec = MAKESURE(st->wSecond, 0, 59);

 t->tm_isdst = -1;
 NormalizeTm(t);
}
