
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
struct TYPE_3__ {int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef struct CK_DATE CK_DATE ;


 int Copy (int ,char*,int) ;
 int Format (char*,int,char*,int ) ;
 int UINT64ToSystem (TYPE_1__*,int ) ;
 int Zero (struct CK_DATE*,int) ;

void UINT64ToCkDate(void *p_ck_date, UINT64 time64)
{
 SYSTEMTIME st;
 char year[32], month[32], day[32];
 struct CK_DATE *ck_date = (CK_DATE *)p_ck_date;

 if (ck_date == ((void*)0))
 {
  return;
 }

 UINT64ToSystem(&st, time64);

 Format(year, sizeof(year), "%04u", st.wYear);
 Format(month, sizeof(month), "%04u", st.wMonth);
 Format(day, sizeof(day), "%04u", st.wDay);

 Zero(ck_date, sizeof(CK_DATE));

 Copy(ck_date->year, year, 4);
 Copy(ck_date->month, month, 2);
 Copy(ck_date->day, day, 2);
}
