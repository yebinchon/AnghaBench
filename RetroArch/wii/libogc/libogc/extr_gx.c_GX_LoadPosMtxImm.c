
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int Mtx ;


 int GX_LOAD_XF_REGS (int,int) ;
 int WriteMtxPS4x3 (int ,void*) ;
 int _SHIFTL (int ,int,int) ;
 scalar_t__ wgPipe ;

void GX_LoadPosMtxImm(Mtx mt,u32 pnidx)
{
 GX_LOAD_XF_REGS((0x0000|(_SHIFTL(pnidx,2,8))),12);
 WriteMtxPS4x3(mt,(void*)wgPipe);
}
