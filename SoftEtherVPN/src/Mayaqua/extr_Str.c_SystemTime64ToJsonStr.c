
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int SYSTEMTIME ;


 int ClearStr (char*,int ) ;
 int SystemTimeToJsonStr (char*,int ,int *) ;
 int UINT64ToSystem (int *,int ) ;

void SystemTime64ToJsonStr(char *dst, UINT size, UINT64 t)
{
 SYSTEMTIME st;
 if (dst == ((void*)0))
 {
  return;
 }

 if (t == 0)
 {
  ClearStr(dst, size);
 }

 UINT64ToSystem(&st, t);

 SystemTimeToJsonStr(dst, size, &st);
}
