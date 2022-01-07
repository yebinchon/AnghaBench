
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__** children; } ;
typedef TYPE_1__ tmp_node_t ;



int AAS_CountTmpNodes(tmp_node_t *tmpnode)
{
 if (!tmpnode) return 0;
 return AAS_CountTmpNodes(tmpnode->children[0]) +
    AAS_CountTmpNodes(tmpnode->children[1]) + 1;
}
