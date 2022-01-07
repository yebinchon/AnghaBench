
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GPU_Primitive_t ;


 int GPUCMD_AddMaskedWrite (int ,int,int) ;
 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_DRAWARRAYS ;
 int GPUREG_FRAMEBUFFER_FLUSH ;
 int GPUREG_GEOSTAGE_CONFIG2 ;
 int GPUREG_INDEXBUFFER_CONFIG ;
 int GPUREG_NUMVERTICES ;
 int GPUREG_PRIMITIVE_CONFIG ;
 int GPUREG_RESTART_PRIMITIVE ;
 int GPUREG_START_DRAW_FUNC0 ;
 int GPUREG_VERTEX_OFFSET ;
 int GPUREG_VTX_FUNC ;

void GPU_DrawArray(GPU_Primitive_t primitive, u32 first, u32 count)
{

 GPUCMD_AddMaskedWrite(GPUREG_PRIMITIVE_CONFIG, 0x2, primitive);
 GPUCMD_AddMaskedWrite(GPUREG_RESTART_PRIMITIVE, 0x2, 0x00000001);

 GPUCMD_AddWrite(GPUREG_INDEXBUFFER_CONFIG, 0x80000000);

 GPUCMD_AddWrite(GPUREG_NUMVERTICES, count);

 GPUCMD_AddWrite(GPUREG_VERTEX_OFFSET, first);


 GPUCMD_AddMaskedWrite(GPUREG_GEOSTAGE_CONFIG2, 0x1, 0x00000001);
 GPUCMD_AddMaskedWrite(GPUREG_START_DRAW_FUNC0, 0x1, 0x00000000);
 GPUCMD_AddWrite(GPUREG_DRAWARRAYS, 0x00000001);
 GPUCMD_AddMaskedWrite(GPUREG_START_DRAW_FUNC0, 0x1, 0x00000001);
 GPUCMD_AddWrite(GPUREG_VTX_FUNC, 0x00000001);
 GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_FLUSH, 0x00000001);
}
