
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int SYSTEMTIME ;


 scalar_t__ DateTimeStrRFC3339ToSystemTime (int *,char*) ;
 int SystemToUINT64 (int *) ;

UINT64 DateTimeStrRFC3339ToSystemTime64(char *str)
{
 SYSTEMTIME st;
 if (DateTimeStrRFC3339ToSystemTime(&st, str))
 {
  return SystemToUINT64(&st);
 }
 else
 {
  return 0;
 }
}
