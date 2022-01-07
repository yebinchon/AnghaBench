
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SYSTEMTIME ;


 int ClearStr (char*,int ) ;
 int GetDateTimeStrRFC3339 (char*,int ,int *,int ) ;

void SystemTimeToJsonStr(char *dst, UINT size, SYSTEMTIME *t)
{
 if (dst == ((void*)0))
 {
  return;
 }

 if (t == ((void*)0))
 {
  ClearStr(dst, size);
 }
 else
 {
  GetDateTimeStrRFC3339(dst, size, t, 0);
 }
}
