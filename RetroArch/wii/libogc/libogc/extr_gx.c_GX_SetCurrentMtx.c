
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mtxIdxLo; int dirtyState; } ;


 TYPE_1__* __gx ;

void GX_SetCurrentMtx(u32 mtx)
{
 __gx->mtxIdxLo = (__gx->mtxIdxLo&~0x3f)|(mtx&0x3f);
 __gx->dirtyState |= 0x04000000;
}
