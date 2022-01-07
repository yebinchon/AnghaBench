
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_LOAD_BP_REG (int) ;

void GX_ClearBoundingBox()
{
 GX_LOAD_BP_REG(0x550003ff);
 GX_LOAD_BP_REG(0x560003ff);
}
