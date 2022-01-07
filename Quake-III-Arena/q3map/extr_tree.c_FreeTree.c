
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int FreeTreePortals_r (int ) ;
 int FreeTree_r (int ) ;
 int free (TYPE_1__*) ;

void FreeTree (tree_t *tree)
{
 FreeTreePortals_r (tree->headnode);
 FreeTree_r (tree->headnode);
 free (tree);
}
