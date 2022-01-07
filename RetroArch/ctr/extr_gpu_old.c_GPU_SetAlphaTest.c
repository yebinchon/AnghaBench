
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int GPU_TESTFUNC ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_FRAGOP_ALPHA_TEST ;

void GPU_SetAlphaTest(bool enable, GPU_TESTFUNC function, u8 ref)
{
 GPUCMD_AddWrite(GPUREG_FRAGOP_ALPHA_TEST, (enable&1)|((function&7)<<4)|(ref<<8));
}
