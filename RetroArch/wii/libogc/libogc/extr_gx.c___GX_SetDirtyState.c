
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dirtyState; } ;


 int __GX_SetChanCntrl () ;
 int __GX_SetChanColor () ;
 int __GX_SetGenMode () ;
 int __GX_SetMatrixIndex (int) ;
 int __GX_SetSUTexRegs () ;
 int __GX_SetTexCoordGen () ;
 int __GX_SetVAT () ;
 int __GX_SetVCD () ;
 int __GX_UpdateBPMask () ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetDirtyState()
{
 if(__gx->dirtyState&0x0001) {
  __GX_SetSUTexRegs();
 }
 if(__gx->dirtyState&0x0002) {
  __GX_UpdateBPMask();
 }
 if(__gx->dirtyState&0x0004) {
  __GX_SetGenMode();
 }
 if(__gx->dirtyState&0x0008) {
  __GX_SetVCD();
 }
 if(__gx->dirtyState&0x0010) {
  __GX_SetVAT();
 }
 if(__gx->dirtyState&~0xff) {
  if(__gx->dirtyState&0x0f00) {
   __GX_SetChanColor();
  }
  if(__gx->dirtyState&0x0100f000) {
   __GX_SetChanCntrl();
  }
  if(__gx->dirtyState&0x02ff0000) {
   __GX_SetTexCoordGen();
  }
  if(__gx->dirtyState&0x04000000) {
   __GX_SetMatrixIndex(0);
   __GX_SetMatrixIndex(5);
  }
 }
 __gx->dirtyState = 0;
}
