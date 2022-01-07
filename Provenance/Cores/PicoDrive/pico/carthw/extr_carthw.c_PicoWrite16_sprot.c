
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int EL_UIO ;
 int PicoWrite16_io (int,int) ;
 int SekPc ;
 int* carthw_sprot_get_val (int,int) ;
 int elprintf (int ,char*,int,int,int ) ;

__attribute__((used)) static void PicoWrite16_sprot(u32 a, u32 d)
{
  u16 *val;

  if (0xa10000 <= a && a < 0xa12000) {
    PicoWrite16_io(a, d);
    return;
  }

  val = carthw_sprot_get_val(a, 1);
  if (val != ((void*)0)) {
    *val = d;
    elprintf(EL_UIO, "prot w16 [%06x] %04x @%06x", a, d & 0xffff, SekPc);
  }
  else
    elprintf(EL_UIO, "prot w16 [%06x] %04x MISS @%06x", a, d & 0xffff, SekPc);
}
