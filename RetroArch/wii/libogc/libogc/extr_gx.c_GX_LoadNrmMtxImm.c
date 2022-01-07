
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int Mtx ;


 int GX_LOAD_XF_REGS (int,int) ;
 int WriteMtxPS3x3from4x3 (int ,void*) ;
 scalar_t__ wgPipe ;

void GX_LoadNrmMtxImm(Mtx mt,u32 pnidx)
{
 GX_LOAD_XF_REGS((0x0400|(pnidx*3)),9);
 WriteMtxPS3x3from4x3(mt,(void*)wgPipe);
}
