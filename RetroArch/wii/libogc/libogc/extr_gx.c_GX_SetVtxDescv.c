
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int dirtyState; } ;
struct TYPE_4__ {scalar_t__ attr; int type; } ;
typedef TYPE_1__ GXVtxDesc ;


 size_t GX_MAX_VTXDESC_LISTSIZE ;
 scalar_t__ GX_VA_NULL ;
 int __SETVCDATTR (scalar_t__,int ) ;
 TYPE_2__* __gx ;

void GX_SetVtxDescv(GXVtxDesc *attr_list)
{
 u32 i;

 if(!attr_list) return;

 for(i=0;i<GX_MAX_VTXDESC_LISTSIZE;i++){
  if(attr_list[i].attr==GX_VA_NULL) break;

  __SETVCDATTR(attr_list[i].attr,attr_list[i].type);
 }
 __gx->dirtyState |= 0x0008;
}
