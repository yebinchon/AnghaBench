
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PicoRead16_svpr (int) ;
 int PicoRead8_io (int) ;

__attribute__((used)) static u32 PicoRead8_svpr(u32 a)
{
  u32 d;

  if ((a & ~0x0f) != 0xa15000)
    return PicoRead8_io(a);

  d = PicoRead16_svpr(a & ~1);
  if (!(a & 1))
    d >>= 8;
  return d;
}
