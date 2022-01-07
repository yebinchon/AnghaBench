
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int genMode; int dirtyState; } ;


 int _SHIFTL (scalar_t__,int,int) ;
 TYPE_1__* __gx ;

void GX_SetNumTevStages(u8 num)
{
 __gx->genMode = (__gx->genMode&~0x3C00)|(_SHIFTL((num-1),10,4));
 __gx->dirtyState |= 0x0004;
}
