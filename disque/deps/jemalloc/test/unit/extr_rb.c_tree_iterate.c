
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_t ;


 int tree_iter (int *,int *,int ,void*) ;
 int tree_iterate_cb ;

__attribute__((used)) static unsigned
tree_iterate(tree_t *tree)
{
 unsigned i;

 i = 0;
 tree_iter(tree, ((void*)0), tree_iterate_cb, (void *)&i);

 return (i);
}
