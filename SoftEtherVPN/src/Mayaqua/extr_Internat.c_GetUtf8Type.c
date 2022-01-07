
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BYTE ;



UINT GetUtf8Type(BYTE *s, UINT size, UINT offset)
{

 if (s == ((void*)0))
 {
  return 0;
 }
 if ((offset + 1) > size)
 {
  return 0;
 }
 if ((s[offset] & 0x80) == 0)
 {

  return 1;
 }
 if ((s[offset] & 0x20) == 0)
 {

  if ((offset + 2) > size)
  {
   return 0;
  }
  return 2;
 }

 if ((offset + 3) > size)
 {
  return 0;
 }
 return 3;
}
