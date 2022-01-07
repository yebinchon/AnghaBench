
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int GPU_TESTFUNC ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_STENCIL_TEST ;

void GPU_SetStencilTest(bool enable, GPU_TESTFUNC function, u8 ref, u8 input_mask, u8 write_mask)
{
 GPUCMD_AddWrite(GPUREG_STENCIL_TEST, (enable&1)|((function&7)<<4)|(write_mask<<8)|(ref<<16)|(input_mask<<24));
}
