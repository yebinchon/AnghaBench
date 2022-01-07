
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ bintree_t ;


 int bintree_free_node (int ) ;

void bintree_free(bintree_t *t)
{
   bintree_free_node(t->root);
}
