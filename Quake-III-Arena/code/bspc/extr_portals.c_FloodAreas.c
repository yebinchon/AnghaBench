
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int FindAreas_r (int ) ;
 int Log_Print (char*,...) ;
 int SetAreaPortalAreas_r (int ) ;
 int c_areas ;

void FloodAreas (tree_t *tree)
{
 Log_Print("--- FloodAreas ---\n");
 FindAreas_r (tree->headnode);
 SetAreaPortalAreas_r (tree->headnode);
 Log_Print("%5i areas\n", c_areas);
}
