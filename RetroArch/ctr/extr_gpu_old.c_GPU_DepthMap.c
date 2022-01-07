
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_DEPTHMAP_ENABLE ;
 int GPUREG_DEPTHMAP_OFFSET ;
 int GPUREG_DEPTHMAP_SCALE ;
 int f32tof24 (float) ;

void GPU_DepthMap(float zScale, float zOffset)
{
 GPUCMD_AddWrite(GPUREG_DEPTHMAP_ENABLE, 0x00000001);
 GPUCMD_AddWrite(GPUREG_DEPTHMAP_SCALE, f32tof24(zScale));
 GPUCMD_AddWrite(GPUREG_DEPTHMAP_OFFSET, f32tof24(zOffset));
}
