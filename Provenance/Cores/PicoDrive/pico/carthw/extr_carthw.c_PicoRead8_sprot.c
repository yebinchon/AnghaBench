
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int EL_UIO ;
 int PicoRead8_io (int) ;
 int SekPc ;
 int* carthw_sprot_get_val (int,int ) ;
 int elprintf (int ,char*,int,int,...) ;

__attribute__((used)) static u32 PicoRead8_sprot(u32 a)
{
  u16 *val;
  u32 d;

  if (0xa10000 <= a && a < 0xa12000)
    return PicoRead8_io(a);

  val = carthw_sprot_get_val(a, 0);
  if (val != ((void*)0)) {
    d = *val;
    if (!(a & 1))
      d >>= 8;
    elprintf(EL_UIO, "prot r8  [%06x]   %02x @%06x", a, d, SekPc);
    return d;
  }
  else {
    elprintf(EL_UIO, "prot r8  [%06x] MISS @%06x", a, SekPc);
    return 0;
  }
}
