
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int VATTable; int dirtyState; } ;


 int __SETVCDFMT (int,int ,int ,int ,int ) ;
 TYPE_1__* __gx ;

void GX_SetVtxAttrFmt(u8 vtxfmt,u32 vtxattr,u32 comptype,u32 compsize,u32 frac)
{
 __SETVCDFMT(vtxfmt,vtxattr,comptype,compsize,frac);
 __gx->VATTable |= (1<<vtxfmt);
 __gx->dirtyState |= 0x0010;
}
