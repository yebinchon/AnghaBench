
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VL_FloodLight (int ) ;
 int * vlights ;

void VL_FloodLightThread(int num)
{
 VL_FloodLight(vlights[num]);
}
