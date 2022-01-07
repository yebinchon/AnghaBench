
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtree_node_elm_t ;


 int free (int *) ;

__attribute__((used)) static void
node_dalloc(rtree_node_elm_t *node)
{

 free(node);
}
