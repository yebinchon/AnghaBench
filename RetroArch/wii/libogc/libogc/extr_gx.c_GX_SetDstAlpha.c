
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int peCMode1; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetDstAlpha(u8 enable,u8 a)
{
 __gx->peCMode1 = (__gx->peCMode1&~0xff)|(a&0xff);
 __gx->peCMode1 = (__gx->peCMode1&~0x100)|(_SHIFTL(enable,8,1));
 GX_LOAD_BP_REG(__gx->peCMode1);
}
