
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

void GX_SetTevAlphaIn(u8 tevstage,u8 a,u8 b,u8 c,u8 d)
{
 u32 reg = (tevstage&0xf);
 __gx->tevAlphaEnv[reg] = (__gx->tevAlphaEnv[reg]&~0xE000)|(_SHIFTL(a,13,3));
 __gx->tevAlphaEnv[reg] = (__gx->tevAlphaEnv[reg]&~0x1C00)|(_SHIFTL(b,10,3));
 __gx->tevAlphaEnv[reg] = (__gx->tevAlphaEnv[reg]&~0x380)|(_SHIFTL(c,7,3));
 __gx->tevAlphaEnv[reg] = (__gx->tevAlphaEnv[reg]&~0x70)|(_SHIFTL(d,4,3));

 GX_LOAD_BP_REG(__gx->tevAlphaEnv[reg]);
}
