
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int dispCopyTL; int dispCopyWH; } ;


 int XY (scalar_t__,scalar_t__) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetDispCopySrc(u16 left,u16 top,u16 wd,u16 ht)
{
 __gx->dispCopyTL = (__gx->dispCopyTL&~0x00ffffff)|XY(left,top);
 __gx->dispCopyTL = (__gx->dispCopyTL&~0xff000000)|(_SHIFTL(0x49,24,8));
 __gx->dispCopyWH = (__gx->dispCopyWH&~0x00ffffff)|XY((wd-1),(ht-1));
 __gx->dispCopyWH = (__gx->dispCopyWH&~0xff000000)|(_SHIFTL(0x4a,24,8));
}
