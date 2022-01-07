
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int FillOutside_r (int *) ;
 scalar_t__ c_inside ;
 scalar_t__ c_outside ;
 scalar_t__ c_solid ;
 int qprintf (char*,...) ;

void FillOutside (node_t *headnode)
{
 c_outside = 0;
 c_inside = 0;
 c_solid = 0;
 qprintf ("--- FillOutside ---\n");
 FillOutside_r (headnode);
 qprintf ("%5i solid leafs\n", c_solid);
 qprintf ("%5i leafs filled\n", c_outside);
 qprintf ("%5i inside leafs\n", c_inside);
}
