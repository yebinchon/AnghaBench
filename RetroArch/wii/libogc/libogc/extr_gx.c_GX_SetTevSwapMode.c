
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int* tevAlphaEnv; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetTevSwapMode(u8 tevstage,u8 ras_sel,u8 tex_sel)
{
 u32 reg = (tevstage&0xf);
 __gx->tevAlphaEnv[reg] = (__gx->tevAlphaEnv[reg]&~0x3)|(ras_sel&0x3);
 __gx->tevAlphaEnv[reg] = (__gx->tevAlphaEnv[reg]&~0xC)|(_SHIFTL(tex_sel,2,2));
 GX_LOAD_BP_REG(__gx->tevAlphaEnv[reg]);
}
