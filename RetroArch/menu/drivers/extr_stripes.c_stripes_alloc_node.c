
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fullpath; scalar_t__ content_icon; scalar_t__ icon; scalar_t__ y; scalar_t__ x; scalar_t__ zoom; scalar_t__ label_alpha; scalar_t__ alpha; } ;
typedef TYPE_1__ stripes_node_t ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static stripes_node_t *stripes_alloc_node(void)
{
   stripes_node_t *node = (stripes_node_t*)malloc(sizeof(*node));

   node->alpha = node->label_alpha = 0;
   node->zoom = node->x = node->y = 0;
   node->icon = node->content_icon = 0;
   node->fullpath = ((void*)0);

   return node;
}
