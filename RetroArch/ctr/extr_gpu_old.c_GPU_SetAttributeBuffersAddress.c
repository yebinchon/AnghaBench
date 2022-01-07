
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPUCMD_AddWrite (int ,int) ;
 int GPUREG_ATTRIBBUFFERS_LOC ;

void GPU_SetAttributeBuffersAddress(u32* baseAddress)
{
 GPUCMD_AddWrite(GPUREG_ATTRIBBUFFERS_LOC, ((u32)baseAddress)>>3);
}
