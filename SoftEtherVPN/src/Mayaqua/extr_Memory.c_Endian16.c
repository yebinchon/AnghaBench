
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;


 int Swap16 (int ) ;

USHORT Endian16(USHORT src)
{
 int x = 1;
 if (*((char *)&x))
 {
  return Swap16(src);
 }
 else
 {
  return src;
 }
}
