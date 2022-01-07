
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SH2 ;


 int EL_32X ;
 int elprintf_sh2 (int *,int ,char*,int ,int ,int ) ;
 int sh2_pc (int *) ;

__attribute__((used)) static u32 sh2_read8_unmapped(u32 a, SH2 *sh2)
{
  elprintf_sh2(sh2, EL_32X, "unmapped r8  [%08x]       %02x @%06x",
    a, 0, sh2_pc(sh2));
  return 0;
}
