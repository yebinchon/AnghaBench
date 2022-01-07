
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int peCMode0; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_SetDither(u8 dither)
{
 __gx->peCMode0 = (__gx->peCMode0&~0x4)|(_SHIFTL(dither,2,1));
 GX_LOAD_BP_REG(__gx->peCMode0);
}
