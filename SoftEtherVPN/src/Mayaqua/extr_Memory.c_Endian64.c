
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int Swap64 (int ) ;

UINT64 Endian64(UINT64 src)
{
 int x = 1;
 if (*((char *)&x))
 {
  return Swap64(src);
 }
 else
 {
  return src;
 }
}
