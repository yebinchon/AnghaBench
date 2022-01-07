
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT64 ;
typedef int UINT ;


 int MAX_SIZE ;
 int StrToUni (int *,int ,char*) ;
 int ToStr3 (char*,int,int ) ;

void UniToStr3(wchar_t *str, UINT size, UINT64 value)
{
 char tmp[MAX_SIZE];

 if (str == ((void*)0))
 {
  return;
 }

 ToStr3(tmp, sizeof(tmp), value);

 StrToUni(str, size, tmp);
}
