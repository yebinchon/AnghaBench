
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int* suSsize; int* suTsize; int texCoordManually; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetTexCoordCylWrap(u8 texcoord,u8 s_enable,u8 t_enable)
{
 u32 reg;

 reg = (texcoord&0x7);
 __gx->suSsize[reg] = (__gx->suSsize[reg]&~0x20000)|(_SHIFTL(s_enable,17,1));
 __gx->suTsize[reg] = (__gx->suTsize[reg]&~0x20000)|(_SHIFTL(t_enable,17,1));

 if(!(__gx->texCoordManually&(_SHIFTL(1,texcoord,1)))) return;

 GX_LOAD_BP_REG(__gx->suSsize[reg]);
 GX_LOAD_BP_REG(__gx->suTsize[reg]);
}
