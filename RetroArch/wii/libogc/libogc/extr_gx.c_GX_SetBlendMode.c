
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int peCMode0; } ;


 scalar_t__ GX_BM_BLEND ;
 scalar_t__ GX_BM_LOGIC ;
 scalar_t__ GX_BM_SUBTRACT ;
 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (scalar_t__,int,int) ;
 TYPE_1__* __gx ;

void GX_SetBlendMode(u8 type,u8 src_fact,u8 dst_fact,u8 op)
{
 __gx->peCMode0 = (__gx->peCMode0&~0x1);
 if(type==GX_BM_BLEND || type==GX_BM_SUBTRACT) __gx->peCMode0 |= 0x1;

 __gx->peCMode0 = (__gx->peCMode0&~0x800);
 if(type==GX_BM_SUBTRACT) __gx->peCMode0 |= 0x800;

 __gx->peCMode0 = (__gx->peCMode0&~0x2);
 if(type==GX_BM_LOGIC) __gx->peCMode0 |= 0x2;

 __gx->peCMode0 = (__gx->peCMode0&~0xF000)|(_SHIFTL(op,12,4));
 __gx->peCMode0 = (__gx->peCMode0&~0xE0)|(_SHIFTL(dst_fact,5,3));
 __gx->peCMode0 = (__gx->peCMode0&~0x700)|(_SHIFTL(src_fact,8,3));

 GX_LOAD_BP_REG(__gx->peCMode0);
}
