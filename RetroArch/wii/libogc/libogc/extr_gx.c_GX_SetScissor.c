
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sciTLcorner; int sciBRcorner; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetScissor(u32 xOrigin,u32 yOrigin,u32 wd,u32 ht)
{
 u32 xo = xOrigin+0x156;
 u32 yo = yOrigin+0x156;
 u32 nwd = xo+(wd-1);
 u32 nht = yo+(ht-1);

 __gx->sciTLcorner = (__gx->sciTLcorner&~0x7ff)|(yo&0x7ff);
 __gx->sciTLcorner = (__gx->sciTLcorner&~0x7FF000)|(_SHIFTL(xo,12,11));

 __gx->sciBRcorner = (__gx->sciBRcorner&~0x7ff)|(nht&0xfff);
 __gx->sciBRcorner = (__gx->sciBRcorner&~0x7FF000)|(_SHIFTL(nwd,12,11));

 GX_LOAD_BP_REG(__gx->sciTLcorner);
 GX_LOAD_BP_REG(__gx->sciBRcorner);
}
