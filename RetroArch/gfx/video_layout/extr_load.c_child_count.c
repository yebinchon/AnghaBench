
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* children; } ;
typedef TYPE_1__ rxml_node_t ;



__attribute__((used)) static int child_count(rxml_node_t *node)
{
   rxml_node_t *child;
   int res = 0;

   for (child = node->children; child; child = child->next)
      ++res;

   return res;
}
