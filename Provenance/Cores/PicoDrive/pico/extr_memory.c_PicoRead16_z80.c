
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PicoRead8_z80 (int) ;

__attribute__((used)) static u32 PicoRead16_z80(u32 a)
{
  u32 d = PicoRead8_z80(a);
  return d | (d << 8);
}
