
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int U8; int U32; } ;


 int _SHIFTL (int ,int,int) ;
 TYPE_1__* wgPipe ;

void GX_LoadPosMtxIdx(u16 mtxidx,u32 pnidx)
{
 wgPipe->U8 = 0x20;
 wgPipe->U32 = ((_SHIFTL(mtxidx,16,16))|0xb000|(_SHIFTL(pnidx,2,8)));
}
