
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int FillOutside_r (int *) ;
 int Log_Print (char*,...) ;
 scalar_t__ c_inside ;
 scalar_t__ c_outside ;
 scalar_t__ c_solid ;

void FillOutside (node_t *headnode)
{
 c_outside = 0;
 c_inside = 0;
 c_solid = 0;
 Log_Print("------- FillOutside --------\n");
 FillOutside_r (headnode);
 Log_Print("%5i solid leaves\n", c_solid);
 Log_Print("%5i leaves filled\n", c_outside);
 Log_Print("%5i inside leaves\n", c_inside);
}
