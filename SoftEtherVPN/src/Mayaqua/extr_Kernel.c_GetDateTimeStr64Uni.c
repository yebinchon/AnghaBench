
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT64 ;
typedef int UINT ;


 int GetDateTimeStr64 (char*,int,int ) ;
 int MAX_SIZE ;
 int StrToUni (int *,int ,char*) ;

void GetDateTimeStr64Uni(wchar_t *str, UINT size, UINT64 sec64)
{
 char tmp[MAX_SIZE];
 if (str == ((void*)0))
 {
  return;
 }

 GetDateTimeStr64(tmp, sizeof(tmp), sec64);
 StrToUni(str, size, tmp);
}
