
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {scalar_t__ peri_regs; } ;
typedef TYPE_1__ SH2 ;


 int EL_32XP ;
 int PREG8 (int *,int) ;
 int elprintf_sh2 (TYPE_1__*,int ,char*,int,int,int ) ;
 int sh2_pc (TYPE_1__*) ;

u32 sh2_peripheral_read8(u32 a, SH2 *sh2)
{
  u8 *r = (void *)sh2->peri_regs;
  u32 d;

  a &= 0x1ff;
  d = PREG8(r, a);

  elprintf_sh2(sh2, EL_32XP, "peri r8  [%08x]       %02x @%06x",
    a | ~0x1ff, d, sh2_pc(sh2));
  return d;
}
