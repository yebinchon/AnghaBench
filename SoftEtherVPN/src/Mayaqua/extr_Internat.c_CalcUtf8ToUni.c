
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;
typedef int BYTE ;


 scalar_t__ StrLen (char*) ;
 int Utf8Len (int *,scalar_t__) ;

UINT CalcUtf8ToUni(BYTE *u, UINT u_size)
{

 if (u == ((void*)0))
 {
  return 0;
 }
 if (u_size == 0)
 {
  u_size = StrLen((char *)u);
 }

 return (Utf8Len(u, u_size) + 1) * sizeof(wchar_t);
}
