
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int st ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_4__ {int wYear; int wMonth; int wDay; } ;
typedef TYPE_1__ SYSTEMTIME ;


 scalar_t__ SystemTime64 () ;
 scalar_t__ SystemToUINT64 (TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

UINT GetDaysUntil2038()
{
 UINT64 now = SystemTime64();
 UINT64 target;
 SYSTEMTIME st;

 Zero(&st, sizeof(st));
 st.wYear = 2038;
 st.wMonth = 1;
 st.wDay = 1;

 target = SystemToUINT64(&st);

 if (now >= target)
 {
  return 0;
 }
 else
 {
  return (UINT)((target - now) / (UINT64)(1000 * 60 * 60 * 24));
 }
}
