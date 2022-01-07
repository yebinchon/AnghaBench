
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dirtyState; int genMode; int* chnCntrl; } ;


 int GX_LOAD_XF_REG (int,int) ;
 int _SHIFTR (int,int,int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetChanCntrl()
{
 u32 i,chan,mask;

 if(__gx->dirtyState&0x01000000) GX_LOAD_XF_REG(0x1009,(_SHIFTR(__gx->genMode,4,3)));

 i = 0;
 chan = 0x100e;
 mask = _SHIFTR(__gx->dirtyState,12,4);
 while(mask) {
  if(mask&0x0001) GX_LOAD_XF_REG(chan,__gx->chnCntrl[i]);

  mask >>= 1;
  chan++;
  i++;
 }
}
