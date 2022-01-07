
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int Format (char*,int ,char*,int ,int ,int ,int ,int ,int ) ;

void GetDateTimeStrMilliForFileName(char *str, UINT size, SYSTEMTIME *tm)
{
 Format(str, size, "%04u%02u%02u_%02u%02u%02u",
  tm->wYear, tm->wMonth, tm->wDay, tm->wHour, tm->wMinute, tm->wSecond);
}
