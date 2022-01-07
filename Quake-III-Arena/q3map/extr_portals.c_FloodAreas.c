
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int CheckAreas_r (int ) ;
 int FindAreas_r (int ) ;
 int c_areas ;
 int qprintf (char*,...) ;

void FloodAreas (tree_t *tree)
{
 qprintf ("--- FloodAreas ---\n");
 FindAreas_r( tree->headnode );


 CheckAreas_r( tree->headnode );

 qprintf ("%5i areas\n", c_areas);
}
