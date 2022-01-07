
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPU_STENCILOP ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_STENCIL_OP ;

void GPU_SetStencilOp(GPU_STENCILOP sfail, GPU_STENCILOP dfail, GPU_STENCILOP pass)
{
 GPUCMD_AddWrite(GPUREG_STENCIL_OP, sfail | (dfail << 4) | (pass << 8));
}
