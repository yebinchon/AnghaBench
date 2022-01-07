
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fullpath; } ;
typedef TYPE_1__ stripes_node_t ;


 scalar_t__ malloc (int) ;
 int * strdup (int *) ;

__attribute__((used)) static stripes_node_t *stripes_copy_node(const stripes_node_t *old_node)
{
   stripes_node_t *new_node = (stripes_node_t*)malloc(sizeof(*new_node));

   *new_node = *old_node;
   new_node->fullpath = old_node->fullpath ? strdup(old_node->fullpath) : ((void*)0);

   return new_node;
}
