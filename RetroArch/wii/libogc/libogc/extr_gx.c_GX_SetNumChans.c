
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int genMode; int dirtyState; } ;


 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_SetNumChans(u8 num)
{
 __gx->genMode = (__gx->genMode&~0x70)|(_SHIFTL(num,4,3));
 __gx->dirtyState |= 0x01000004;
}
