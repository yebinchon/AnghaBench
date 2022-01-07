
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniGetLineUnix (int *,int ) ;
 int UniGetLineWin32 (int *,int ) ;

bool UniGetLine(wchar_t *str, UINT size)
{



 return UniGetLineUnix(str, size);

}
