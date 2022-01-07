
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPU_CULLMODE ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_FACECULLING_CONFIG ;

void GPU_SetFaceCulling(GPU_CULLMODE mode)
{
 GPUCMD_AddWrite(GPUREG_FACECULLING_CONFIG, mode&0x3);
}
