
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dirtyState; } ;
struct TYPE_3__ {scalar_t__ U32; } ;


 int __GX_SetDirtyState () ;
 TYPE_2__* __gx ;
 int ppcsync () ;
 TYPE_1__* wgPipe ;

void GX_Flush()
{
 if(__gx->dirtyState)
  __GX_SetDirtyState();

 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;

 ppcsync();
}
