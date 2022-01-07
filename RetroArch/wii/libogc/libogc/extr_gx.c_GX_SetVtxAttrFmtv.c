
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_5__ {int VATTable; int dirtyState; } ;
struct TYPE_4__ {scalar_t__ vtxattr; int frac; int compsize; int comptype; } ;
typedef TYPE_1__ GXVtxAttrFmt ;


 size_t GX_MAX_VTXATTRFMT_LISTSIZE ;
 scalar_t__ GX_VA_NULL ;
 int __SETVCDFMT (int,scalar_t__,int ,int ,int ) ;
 TYPE_2__* __gx ;

void GX_SetVtxAttrFmtv(u8 vtxfmt,GXVtxAttrFmt *attr_list)
{
 u32 i;

 for(i=0;i<GX_MAX_VTXATTRFMT_LISTSIZE;i++) {
  if(attr_list[i].vtxattr==GX_VA_NULL) break;

  __SETVCDFMT(vtxfmt,attr_list[i].vtxattr,attr_list[i].comptype,attr_list[i].compsize,attr_list[i].frac);
 }
 __gx->VATTable |= (1<<vtxfmt);
 __gx->dirtyState |= 0x0010;
}
