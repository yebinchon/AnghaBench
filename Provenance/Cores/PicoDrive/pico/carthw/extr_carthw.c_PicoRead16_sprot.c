
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int EL_UIO ;
 int PicoRead16_io (int) ;
 int SekPc ;
 int* carthw_sprot_get_val (int,int ) ;
 int elprintf (int ,char*,int,int,...) ;

__attribute__((used)) static u32 PicoRead16_sprot(u32 a)
{
  u16 *val;

  if (0xa10000 <= a && a < 0xa12000)
    return PicoRead16_io(a);

  val = carthw_sprot_get_val(a, 0);
  if (val != ((void*)0)) {
    elprintf(EL_UIO, "prot r16 [%06x] %04x @%06x", a, *val, SekPc);
    return *val;
  }
  else {
    elprintf(EL_UIO, "prot r16 [%06x] MISS @%06x", a, SekPc);
    return 0;
  }
}
