
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_year; int tm_wday; int tm_mon; } ;
struct TYPE_3__ {int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; int wDayOfWeek; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int GetLocalTime (TYPE_1__*) ;
 int hex2bcd (int) ;
 struct tm* localtime (int *) ;
 int time (int *) ;

__attribute__((used)) static int gettime(int p)
{
 time_t tt;
 struct tm *lt;

 tt = time(((void*)0));
 lt = localtime(&tt);

 switch (p) {
 case 0:
  return hex2bcd(lt->tm_sec);
 case 1:
  return hex2bcd(lt->tm_min);
 case 2:
  return hex2bcd(lt->tm_hour);
 case 3:
  return hex2bcd(lt->tm_mday);
 case 4:
  return hex2bcd(lt->tm_mon + 1);
 case 5:
  return hex2bcd(lt->tm_year % 100);
 case 6:
  return hex2bcd(((lt->tm_wday + 2) % 7) + 1);
 }

 return 0;
}
