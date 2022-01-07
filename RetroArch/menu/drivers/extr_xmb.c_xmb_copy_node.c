
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fullpath; } ;
typedef TYPE_1__ xmb_node_t ;


 scalar_t__ malloc (int) ;
 int * strdup (int *) ;

__attribute__((used)) static xmb_node_t *xmb_copy_node(const xmb_node_t *old_node)
{
   xmb_node_t *new_node = (xmb_node_t*)malloc(sizeof(*new_node));

   if (!new_node)
      return ((void*)0);

   *new_node = *old_node;
   new_node->fullpath = old_node->fullpath ? strdup(old_node->fullpath) : ((void*)0);

   return new_node;
}
