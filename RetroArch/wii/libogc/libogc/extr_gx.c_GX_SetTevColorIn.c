
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int* tevColorEnv; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetTevColorIn(u8 tevstage,u8 a,u8 b,u8 c,u8 d)
{
 u32 reg = (tevstage&0xf);
 __gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xF000)|(_SHIFTL(a,12,4));
 __gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xF00)|(_SHIFTL(b,8,4));
 __gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xF0)|(_SHIFTL(c,4,4));
 __gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xf)|(d&0xf);

 GX_LOAD_BP_REG(__gx->tevColorEnv[reg]);
}
