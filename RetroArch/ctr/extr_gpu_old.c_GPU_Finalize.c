
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPUCMD_AddMaskedWrite (int ,int,int) ;
 int GPUCMD_AddWrite (int ,int) ;
 int GPUCMD_Split (int *,int *) ;
 int GPUREG_FINALIZE ;
 int GPUREG_FRAMEBUFFER_FLUSH ;
 int GPUREG_FRAMEBUFFER_INVALIDATE ;
 int GPUREG_PRIMITIVE_CONFIG ;

void GPU_Finalize(void)
{
   GPUCMD_AddMaskedWrite(GPUREG_PRIMITIVE_CONFIG, 0x8, 0x00000000);
   GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_FLUSH, 0x00000001);
   GPUCMD_AddWrite(GPUREG_FRAMEBUFFER_INVALIDATE, 0x00000001);



   GPUCMD_AddWrite(GPUREG_FINALIZE, 0x12345678);

   GPUCMD_AddWrite(GPUREG_FINALIZE,0x12345678);

}
