
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int st ;
typedef scalar_t__ UINT64 ;
struct TYPE_4__ {int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int ELOG_BETA_EXPIRES_DAY ;
 int ELOG_BETA_EXPIRES_MONTH ;
 int ELOG_BETA_EXPIRES_YEAR ;
 int ELOG_IS_BETA ;
 scalar_t__ LocalTime64 () ;
 scalar_t__ SystemToUINT64 (TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

bool ElIsBetaExpired()
{
 SYSTEMTIME st;
 UINT64 expires64;
 UINT64 now64;
 if (ELOG_IS_BETA == 0)
 {
  return 0;
 }

 Zero(&st, sizeof(st));

 st.wYear = ELOG_BETA_EXPIRES_YEAR;
 st.wMonth = ELOG_BETA_EXPIRES_MONTH;
 st.wDay = ELOG_BETA_EXPIRES_DAY;

 expires64 = SystemToUINT64(&st);
 now64 = LocalTime64();

 if (now64 >= expires64)
 {
  return 1;
 }

 return 0;
}
