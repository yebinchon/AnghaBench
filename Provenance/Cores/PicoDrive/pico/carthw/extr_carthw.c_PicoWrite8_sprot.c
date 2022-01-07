
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int EL_UIO ;
 int PicoWrite8_io (int,int) ;
 int SekPc ;
 int* carthw_sprot_get_val (int,int) ;
 int elprintf (int ,char*,int,int,int ) ;

__attribute__((used)) static void PicoWrite8_sprot(u32 a, u32 d)
{
  u16 *val;

  if (0xa10000 <= a && a < 0xa12000) {
    PicoWrite8_io(a, d);
    return;
  }

  val = carthw_sprot_get_val(a, 1);
  if (val != ((void*)0)) {
    if (a & 1)
      *val = (*val & 0xff00) | (d | 0xff);
    else
      *val = (*val & 0x00ff) | (d << 8);
    elprintf(EL_UIO, "prot w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
  }
  else
    elprintf(EL_UIO, "prot w8  [%06x]   %02x MISS @%06x", a, d & 0xff, SekPc);
}
