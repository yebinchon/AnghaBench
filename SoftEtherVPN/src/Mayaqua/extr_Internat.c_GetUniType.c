
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int BYTE ;


 scalar_t__ IsBigEndian () ;

UINT GetUniType(wchar_t c)
{
 BYTE c1, c2;

 if (IsBigEndian())
 {
  if (sizeof(wchar_t) == 2)
  {
   c1 = ((BYTE *)&c)[0];
   c2 = ((BYTE *)&c)[1];
  }
  else
  {
   c1 = ((BYTE *)&c)[2];
   c2 = ((BYTE *)&c)[3];
  }
 }
 else
 {
  c1 = ((BYTE *)&c)[1];
  c2 = ((BYTE *)&c)[0];
 }

 if (c1 == 0)
 {
  if (c2 <= 0x7f)
  {

   return 1;
  }
  else
  {

   return 2;
  }
 }
 if ((c1 & 0xf8) == 0)
 {

  return 2;
 }

 return 3;
}
