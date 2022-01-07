
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int genMode; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_SetCoPlanar(u8 enable)
{
 __gx->genMode = (__gx->genMode&~0x80000)|(_SHIFTL(enable,19,1));
 GX_LOAD_BP_REG(0xFE080000);
 GX_LOAD_BP_REG(__gx->genMode);
}
