
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dispCopyCntrl; } ;


 TYPE_1__* __gx ;

void GX_SetCopyClamp(u8 clamp)
{
 __gx->dispCopyCntrl = (__gx->dispCopyCntrl&~1)|(clamp&1);
 __gx->dispCopyCntrl = (__gx->dispCopyCntrl&~2)|(clamp&2);
}
