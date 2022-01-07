
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;
typedef int IP ;


 int IPToStr (char*,int,int *) ;
 int StrToUni (int *,int ,char*) ;

void IPToUniStr(wchar_t *str, UINT size, IP *ip)
{
 char tmp[128];

 IPToStr(tmp, sizeof(tmp), ip);
 StrToUni(str, size, tmp);
}
