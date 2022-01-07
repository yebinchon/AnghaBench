
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_2__ {int texCoordManually; int* suSsize; int* suTsize; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetTexCoordScaleManually(u8 texcoord,u8 enable,u16 ss,u16 ts)
{
 u32 reg;

 __gx->texCoordManually = (__gx->texCoordManually&~(_SHIFTL(1,texcoord,1)))|(_SHIFTL(enable,texcoord,1));
 if(!enable) return;

 reg = (texcoord&0x7);
 __gx->suSsize[reg] = (__gx->suSsize[reg]&~0xffff)|((ss-1)&0xffff);
 __gx->suTsize[reg] = (__gx->suTsize[reg]&~0xffff)|((ts-1)&0xffff);

 GX_LOAD_BP_REG(__gx->suSsize[reg]);
 GX_LOAD_BP_REG(__gx->suTsize[reg]);
}
