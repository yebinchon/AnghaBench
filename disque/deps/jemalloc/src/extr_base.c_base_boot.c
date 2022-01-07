
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_avail_szad ;
 int base_mtx ;
 int * base_nodes ;
 int extent_tree_szad_new (int *) ;
 scalar_t__ malloc_mutex_init (int *) ;

bool
base_boot(void)
{

 if (malloc_mutex_init(&base_mtx))
  return (1);
 extent_tree_szad_new(&base_avail_szad);
 base_nodes = ((void*)0);

 return (0);
}
