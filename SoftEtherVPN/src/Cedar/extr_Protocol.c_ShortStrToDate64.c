
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int st ;
typedef int UINT64 ;
typedef int UINT ;
struct TYPE_4__ {int wYear; int wMonth; int wDay; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int SystemToUINT64 (TYPE_1__*) ;
 int ToInt (char*) ;
 int Zero (TYPE_1__*,int) ;

UINT64 ShortStrToDate64(char *str)
{
 UINT v;
 SYSTEMTIME st;

 if (str == ((void*)0))
 {
  return 0;
 }

 v = ToInt(str);

 Zero(&st, sizeof(st));

 st.wYear = (v % 100000000) / 10000;
 st.wMonth = (v % 10000) / 100;
 st.wDay = v % 100;

 return SystemToUINT64(&st);
}
