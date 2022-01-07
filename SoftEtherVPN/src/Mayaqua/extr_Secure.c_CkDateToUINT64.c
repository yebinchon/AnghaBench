
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int year ;
struct CK_DATE {int day; int month; int year; } ;
typedef int month ;
typedef int day ;
typedef int UINT64 ;
struct TYPE_3__ {void* wDay; void* wMonth; void* wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int Copy (char*,int ,int) ;
 int SystemToUINT64 (TYPE_1__*) ;
 void* ToInt (char*) ;
 int Zero (char*,int) ;

UINT64 CkDateToUINT64(struct CK_DATE *ck_date)
{
 SYSTEMTIME st;
 char year[32], month[32], day[32];

 if (ck_date == ((void*)0))
 {
  return 0;
 }

 Zero(year, sizeof(year));
 Zero(month, sizeof(month));
 Zero(day, sizeof(day));

 Copy(year, ck_date->year, 4);
 Copy(month, ck_date->month, 2);
 Copy(day, ck_date->day, 2);

 st.wYear = ToInt(year);
 st.wMonth = ToInt(month);
 st.wDay = ToInt(day);

 return SystemToUINT64(&st);
}
