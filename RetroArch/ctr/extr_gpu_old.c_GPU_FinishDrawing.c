
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_EARLYDEPTH_CLEAR ;
 int GPUREG_FRAMEBUFFER_FLUSH ;
 int GPUREG_FRAMEBUFFER_INVALIDATE ;

void GPU_FinishDrawing()
{
 GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_FLUSH, 0x00000001);
 GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_INVALIDATE, 0x00000001);
 GPUCMD_AddWrite(GPUREG_EARLYDEPTH_CLEAR, 0x00000001);
}
