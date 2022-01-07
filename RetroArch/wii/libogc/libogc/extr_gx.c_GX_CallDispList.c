
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int vcdClear; scalar_t__ dirtyState; } ;
struct TYPE_3__ {int U8; int U32; } ;


 int MEM_VIRTUAL_TO_PHYSICAL (void*) ;
 int __GX_SendFlushPrim () ;
 int __GX_SetDirtyState () ;
 TYPE_2__* __gx ;
 TYPE_1__* wgPipe ;

void GX_CallDispList(void *list,u32 nbytes)
{
 if(__gx->dirtyState)
  __GX_SetDirtyState();

 if(!__gx->vcdClear)
  __GX_SendFlushPrim();

 wgPipe->U8 = 0x40;
 wgPipe->U32 = MEM_VIRTUAL_TO_PHYSICAL(list);
 wgPipe->U32 = nbytes;
}
