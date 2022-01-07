
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_t ;


 int tree_iterate_cb ;
 int tree_reverse_iter (int *,int *,int ,void*) ;

__attribute__((used)) static unsigned
tree_iterate_reverse(tree_t *tree)
{
 unsigned i;

 i = 0;
 tree_reverse_iter(tree, ((void*)0), tree_iterate_cb, (void *)&i);

 return (i);
}
