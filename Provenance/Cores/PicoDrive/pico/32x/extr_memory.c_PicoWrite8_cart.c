
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int m68k_write8 (int,int) ;

__attribute__((used)) static void PicoWrite8_cart(u32 a, u32 d)
{
  elprintf(EL_UIO, "m68k w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);

  a &= 0xfffff;
  m68k_write8(a, d);
}
