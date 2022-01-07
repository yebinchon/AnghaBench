
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;

__attribute__((used)) static void s68k_unmapped_write8(u32 a, u32 d)
{
  elprintf(EL_UIO, "s68k unmapped w8  [%06x]   %02x @%06x",
    a, d & 0xff, SekPc);
}
