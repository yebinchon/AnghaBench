
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * const_node ;
typedef int * __action_fn_t ;


 int CHECK_TREE (int *) ;
 int trecurse (int *,int *,int ) ;

void
__twalk (const void *vroot, __action_fn_t action)
{
  const_node root = (const_node) vroot;

  CHECK_TREE (root);

  if (root != ((void*)0) && action != ((void*)0))
    trecurse (root, action, 0);
}
