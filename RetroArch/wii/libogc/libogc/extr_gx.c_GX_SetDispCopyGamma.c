
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dispCopyCntrl; } ;


 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_SetDispCopyGamma(u8 gamma)
{
 __gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0x180)|(_SHIFTL(gamma,7,2));
}
