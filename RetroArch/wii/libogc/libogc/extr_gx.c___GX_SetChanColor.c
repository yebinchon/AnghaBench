
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dirtyState; int * chnMatColor; int * chnAmbColor; } ;


 int GX_LOAD_XF_REG (int,int ) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetChanColor()
{
 if(__gx->dirtyState&0x0100)
  GX_LOAD_XF_REG(0x100a,__gx->chnAmbColor[0]);
 if(__gx->dirtyState&0x0200)
  GX_LOAD_XF_REG(0x100b,__gx->chnAmbColor[1]);
 if(__gx->dirtyState&0x0400)
  GX_LOAD_XF_REG(0x100c,__gx->chnMatColor[0]);
 if(__gx->dirtyState&0x0800)
  GX_LOAD_XF_REG(0x100d,__gx->chnMatColor[1]);
}
