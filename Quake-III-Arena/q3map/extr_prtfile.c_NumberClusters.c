
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int NumberLeafs_r (int ) ;
 scalar_t__ num_solidfaces ;
 scalar_t__ num_visclusters ;
 scalar_t__ num_visportals ;
 int qprintf (char*,...) ;

void NumberClusters(tree_t *tree) {
 num_visclusters = 0;
 num_visportals = 0;
 num_solidfaces = 0;

 qprintf ("--- NumberClusters ---\n");


 NumberLeafs_r (tree->headnode);

 qprintf ("%5i visclusters\n", num_visclusters);
 qprintf ("%5i visportals\n", num_visportals);
 qprintf ("%5i solidfaces\n", num_solidfaces);
}
