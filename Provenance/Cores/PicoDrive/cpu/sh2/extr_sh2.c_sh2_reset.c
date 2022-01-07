
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pending_int_irq; scalar_t__ vbr; int sr; void** r; void* pc; } ;
typedef TYPE_1__ SH2 ;


 int I ;
 void* p32x_sh2_read32 (int,TYPE_1__*) ;

void sh2_reset(SH2 *sh2)
{
 sh2->pc = p32x_sh2_read32(0, sh2);
 sh2->r[15] = p32x_sh2_read32(4, sh2);
 sh2->sr = I;
 sh2->vbr = 0;
 sh2->pending_int_irq = 0;
}
