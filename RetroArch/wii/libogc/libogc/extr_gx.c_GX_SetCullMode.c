
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int genMode; int dirtyState; } ;


 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetCullMode(u8 mode)
{
    static u8 cm2hw[] = { 0, 2, 1, 3 };

 __gx->genMode = (__gx->genMode&~0xC000)|(_SHIFTL(cm2hw[mode],14,2));
 __gx->dirtyState |= 0x0004;
}
