
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dirtyState; } ;


 int __SETVCDATTR (int ,int ) ;
 TYPE_1__* __gx ;

void GX_SetVtxDesc(u8 attr,u8 type)
{
 __SETVCDATTR(attr,type);
 __gx->dirtyState |= 0x0008;
}
