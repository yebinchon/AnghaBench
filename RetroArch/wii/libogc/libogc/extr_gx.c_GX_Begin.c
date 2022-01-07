
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ dirtyState; } ;
struct TYPE_3__ {int U8; int U16; } ;


 int __GX_SetDirtyState () ;
 TYPE_2__* __gx ;
 TYPE_1__* wgPipe ;

void GX_Begin(u8 primitve,u8 vtxfmt,u16 vtxcnt)
{
 u8 reg = primitve|(vtxfmt&7);

 if(__gx->dirtyState)
  __GX_SetDirtyState();

 wgPipe->U8 = reg;
 wgPipe->U16 = vtxcnt;
}
