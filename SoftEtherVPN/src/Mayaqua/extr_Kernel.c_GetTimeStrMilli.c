
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int wMilliseconds; int wSecond; int wMinute; int wHour; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int Format (char*,int ,char*,int ,int ,int ,int ) ;

void GetTimeStrMilli(char *str, UINT size, SYSTEMTIME *st)
{

 if (st == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 Format(str, size, "%02u:%02u:%02u.%03u",
  st->wHour, st->wMinute, st->wSecond, st->wMilliseconds);
}
