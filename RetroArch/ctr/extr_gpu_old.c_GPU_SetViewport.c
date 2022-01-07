
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPUCMD_AddIncrementalWrites (int ,int*,int) ;
 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_COLORBUFFER_FORMAT ;
 int GPUREG_COLORBUFFER_READ ;
 int GPUREG_DEPTHBUFFER_FORMAT ;
 int GPUREG_DEPTHBUFFER_LOC ;
 int GPUREG_FRAMEBUFFER_BLOCK32 ;
 int GPUREG_FRAMEBUFFER_FLUSH ;
 int GPUREG_FRAMEBUFFER_INVALIDATE ;
 int GPUREG_RENDERBUF_DIM ;
 int GPUREG_SCISSORTEST_MODE ;
 int GPUREG_VIEWPORT_WIDTH ;
 int GPUREG_VIEWPORT_XY ;
 int f32tof24 (float) ;
 int f32tof31 (float) ;

void GPU_SetViewport(u32* depthBuffer, u32* colorBuffer, u32 x, u32 y, u32 w, u32 h)
{
 u32 param[0x4];
 float fw=(float)w;
 float fh=(float)h;

 GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_FLUSH, 0x00000001);
 GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_INVALIDATE, 0x00000001);

 u32 f116e=0x01000000|(((h-1)&0xFFF)<<12)|(w&0xFFF);

 param[0x0]=((u32)depthBuffer)>>3;
 param[0x1]=((u32)colorBuffer)>>3;
 param[0x2]=f116e;
 GPUCMD_AddIncrementalWrites(GPUREG_DEPTHBUFFER_LOC, param, 0x00000003);

 GPUCMD_AddWrite(GPUREG_RENDERBUF_DIM, f116e);
 GPUCMD_AddWrite(GPUREG_DEPTHBUFFER_FORMAT, 0x00000003);
 GPUCMD_AddWrite(GPUREG_COLORBUFFER_FORMAT, 0x00000002);
 GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_BLOCK32, 0x00000000);

 param[0x0]=f32tof24(fw/2);
 param[0x1]=f32tof31(2.0f / fw) << 1;
 param[0x2]=f32tof24(fh/2);
 param[0x3]=f32tof31(2.0f / fh) << 1;
 GPUCMD_AddIncrementalWrites(GPUREG_VIEWPORT_WIDTH, param, 0x00000004);

 GPUCMD_AddWrite(GPUREG_VIEWPORT_XY, (y<<16)|(x&0xFFFF));

 param[0x0]=0x00000000;
 param[0x1]=0x00000000;
 param[0x2]=((h-1)<<16)|((w-1)&0xFFFF);
 GPUCMD_AddIncrementalWrites(GPUREG_SCISSORTEST_MODE, param, 0x00000003);


 param[0x0]=0x0000000F;
 param[0x1]=0x0000000F;
 param[0x2]=0x00000002;
 param[0x3]=0x00000002;
 GPUCMD_AddIncrementalWrites(GPUREG_COLORBUFFER_READ, param, 0x00000004);
}
