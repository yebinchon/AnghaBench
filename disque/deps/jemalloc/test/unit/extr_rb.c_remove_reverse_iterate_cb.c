
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_t ;
typedef int node_t ;


 int node_remove (int *,int *,unsigned int) ;
 int * tree_prev (int *,int *) ;

__attribute__((used)) static node_t *
remove_reverse_iterate_cb(tree_t *tree, node_t *node, void *data)
{
 unsigned *nnodes = (unsigned *)data;
 node_t *ret = tree_prev(tree, node);

 node_remove(tree, node, *nnodes);

 return (ret);
}
