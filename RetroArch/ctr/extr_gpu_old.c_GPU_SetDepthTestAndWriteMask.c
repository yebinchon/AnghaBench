
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPU_WRITEMASK ;
typedef int GPU_TESTFUNC ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_DEPTH_COLOR_MASK ;

void GPU_SetDepthTestAndWriteMask(bool enable, GPU_TESTFUNC function, GPU_WRITEMASK writemask)
{
 GPUCMD_AddWrite(GPUREG_DEPTH_COLOR_MASK, (enable&1)|((function&7)<<4)|(writemask<<8));
}
