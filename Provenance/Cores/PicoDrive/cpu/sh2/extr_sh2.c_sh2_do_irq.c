
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sr; int* r; int pc; int icount; scalar_t__ vbr; } ;
typedef TYPE_1__ SH2 ;


 int I ;
 int p32x_sh2_read32 (scalar_t__,TYPE_1__*) ;
 int p32x_sh2_write32 (int,int,TYPE_1__*) ;

void sh2_do_irq(SH2 *sh2, int level, int vector)
{
 sh2->sr &= 0x3f3;

 sh2->r[15] -= 4;
 p32x_sh2_write32(sh2->r[15], sh2->sr, sh2);
 sh2->r[15] -= 4;
 p32x_sh2_write32(sh2->r[15], sh2->pc, sh2);


 sh2->sr = (sh2->sr & ~I) | (level << 4);


 sh2->pc = p32x_sh2_read32(sh2->vbr + vector * 4, sh2);


 sh2->icount -= 13;
}
