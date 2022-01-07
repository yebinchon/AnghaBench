
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_LOAD_BP_REG (int) ;
 int GX_LOAD_XF_REG (int,int) ;

void GX_InitXfRasMetric()
{
 GX_LOAD_BP_REG(0x2402C022);
 GX_LOAD_XF_REG(0x1006,0x31000);
}
