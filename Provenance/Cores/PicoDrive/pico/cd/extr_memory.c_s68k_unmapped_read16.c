
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int SekPc ;
 int elprintf (int ,char*,int ,int ) ;

__attribute__((used)) static u32 s68k_unmapped_read16(u32 a)
{
  elprintf(EL_UIO, "s68k unmapped r16 [%06x] @%06x", a, SekPc);
  return 0;
}
