
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int m68k_write16 (int,int) ;

__attribute__((used)) static void PicoWrite16_cart(u32 a, u32 d)
{
  elprintf(EL_UIO, "m68k w16 [%06x] %04x @%06x", a, d & 0xffff, SekPc);

  a &= 0xfffff;
  m68k_write16(a, d);
}
