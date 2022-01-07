
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int dispCopyDst; } ;


 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int ,int,int) ;
 TYPE_1__* __gx ;

void GX_SetDispCopyDst(u16 wd,u16 ht)
{
 __gx->dispCopyDst = (__gx->dispCopyDst&~0x3ff)|(_SHIFTR(wd,4,10));
 __gx->dispCopyDst = (__gx->dispCopyDst&~0xff000000)|(_SHIFTL(0x4d,24,8));
}
