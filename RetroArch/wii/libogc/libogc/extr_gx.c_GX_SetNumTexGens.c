
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int genMode; int dirtyState; } ;


 TYPE_1__* __gx ;

void GX_SetNumTexGens(u32 nr)
{
 __gx->genMode = (__gx->genMode&~0xf)|(nr&0xf);
 __gx->dirtyState |= 0x02000004;
}
