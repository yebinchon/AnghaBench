
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;


 int UniStrLen (int *) ;
 scalar_t__ UnixCalcUniToStr (int *) ;
 scalar_t__ wcstombs (int *,int *,int ) ;

UINT CalcUniToStr(wchar_t *s)
{
 return UnixCalcUniToStr(s);

}
