
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int peCntrl; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_SetZCompLoc(u8 before_tex)
{
 __gx->peCntrl = (__gx->peCntrl&~0x40)|(_SHIFTL(before_tex,6,1));
 GX_LOAD_BP_REG(__gx->peCntrl);
}
