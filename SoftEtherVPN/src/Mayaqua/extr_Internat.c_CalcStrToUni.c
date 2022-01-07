
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int StrLen (char*) ;
 int UnixCalcStrToUni (char*) ;
 scalar_t__ mbstowcs (int *,char*,int ) ;

UINT CalcStrToUni(char *str)
{
 return UnixCalcStrToUni(str);

}
