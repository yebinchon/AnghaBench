
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPUCMD_SetBuffer (int *,int ,int ) ;

void GPU_Reset(u32* gxbuf, u32* gpuBuf, u32 gpuBufSize)
{
 GPUCMD_SetBuffer(gpuBuf, gpuBufSize, 0);
}
