
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int wMilliseconds; int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int ClearStr (char*,int ) ;
 int Format (char*,int ,char*,int ,int ,int ,int ,int ,int ,int ,...) ;

void GetDateTimeStrRFC3339(char *str, UINT size, SYSTEMTIME *st, int timezone_min){

 if (str == ((void*)0) || st == ((void*)0))
 {
  ClearStr(str, size);
  return;
 }

 if(timezone_min == 0){
  Format(str, size, "%04u-%02u-%02uT%02u:%02u:%02u.%03uZ",
  st->wYear, st->wMonth, st->wDay,
  st->wHour, st->wMinute, st->wSecond,
  st->wMilliseconds);
 }else{
  Format(str, size, "%04u-%02u-%02uT%02u:%02u:%02u.%03u%+02d:%02d",
  st->wYear, st->wMonth, st->wDay,
  st->wHour, st->wMinute, st->wSecond,
  st->wMilliseconds, timezone_min/60, timezone_min%60);
 }
}
