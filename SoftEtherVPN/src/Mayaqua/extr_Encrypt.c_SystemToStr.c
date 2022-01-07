
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int wYear; int wSecond; int wMinute; int wHour; int wDay; int wMonth; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int Format (char*,int ,char*,int,int ,int ,int ,int ,int ) ;

bool SystemToStr(char *str, UINT size, SYSTEMTIME *s)
{

 if (str == ((void*)0) || s == ((void*)0))
 {
  return 0;
 }

 Format(str, size, "%02u%02u%02u%02u%02u%02uZ",
  s->wYear % 100, s->wMonth, s->wDay,
  s->wHour, s->wMinute, s->wSecond);

 return 1;
}
