
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int st ;
typedef int UINT64 ;
struct TYPE_4__ {int wSecond; int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int BUILD_DATE_D ;
 int BUILD_DATE_HO ;
 int BUILD_DATE_M ;
 int BUILD_DATE_MI ;
 int BUILD_DATE_SE ;
 int BUILD_DATE_Y ;
 int SystemToUINT64 (TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

UINT64 GetCurrentBuildDate()
{
 SYSTEMTIME st;

 Zero(&st, sizeof(st));

 st.wYear = BUILD_DATE_Y;
 st.wMonth = BUILD_DATE_M;
 st.wDay = BUILD_DATE_D;
 st.wHour = BUILD_DATE_HO;
 st.wMinute = BUILD_DATE_MI;
 st.wSecond = BUILD_DATE_SE;

 return SystemToUINT64(&st);
}
