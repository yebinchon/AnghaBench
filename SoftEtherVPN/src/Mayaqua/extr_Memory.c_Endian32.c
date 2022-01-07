
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Swap32 (int ) ;

UINT Endian32(UINT src)
{
 int x = 1;
 if (*((char *)&x))
 {
  return Swap32(src);
 }
 else
 {
  return src;
 }
}
