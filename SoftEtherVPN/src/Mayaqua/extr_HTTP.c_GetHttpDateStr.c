
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT ;
struct TYPE_3__ {size_t wDayOfWeek; int wMonth; int wSecond; int wMinute; int wHour; int wYear; int wDay; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int Format (char*,int ,char*,char*,int ,char*,int ,int ,int ,int ) ;
 int UINT64ToSystem (TYPE_1__*,int ) ;

void GetHttpDateStr(char *str, UINT size, UINT64 t)
{
 SYSTEMTIME s;
 static char *wday[] =
 {
  "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat",
 };
 static char *month[] =
 {
  "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
  "Nov", "Dec",
 };

 if (str == ((void*)0))
 {
  return;
 }
 UINT64ToSystem(&s, t);

 Format(str, size, "%s, %02u %s %04u %02u:%02u:%02u GMT",
  wday[s.wDayOfWeek], s.wDay, month[s.wMonth - 1], s.wYear,
  s.wHour, s.wMinute, s.wSecond);
}
