
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;


 int IPToStr32 (char*,int,int ) ;
 int StrToUni (int *,int ,char*) ;

void IPToUniStr32(wchar_t *str, UINT size, UINT ip)
{
 char tmp[128];

 IPToStr32(tmp, sizeof(tmp), ip);
 StrToUni(str, size, tmp);
}
