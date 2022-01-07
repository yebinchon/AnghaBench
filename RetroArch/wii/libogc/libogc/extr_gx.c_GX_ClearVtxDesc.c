
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vcdClear; int dirtyState; scalar_t__ vcdHi; scalar_t__ vcdLo; scalar_t__ vcdNrms; } ;


 TYPE_1__* __gx ;

void GX_ClearVtxDesc()
{
 __gx->vcdNrms = 0;
 __gx->vcdClear = ((__gx->vcdClear&~0x0600)|0x0200);
 __gx->vcdLo = __gx->vcdHi = 0;
 __gx->dirtyState |= 0x0008;
}
