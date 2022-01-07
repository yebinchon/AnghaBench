
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int scope_t ;
struct TYPE_6__ {int name; struct TYPE_6__* next; struct TYPE_6__* children; } ;
typedef TYPE_1__ rxml_node_t ;


 int load_element (int *,TYPE_1__*) ;
 int load_group (int *,TYPE_1__*) ;
 int load_param (int *,TYPE_1__*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool load_top_level(scope_t *scope, int *view_count, rxml_node_t *root)
{
   rxml_node_t *node;
   bool result = 1;
   *view_count = 0;

   for (node = root->children; node; node = node->next)
   {
      if (strcmp(node->name, "param") == 0)
      {
         if (!load_param(scope, node, 0))
            result = 0;
      }

      else if (strcmp(node->name, "element") == 0)
      {
         if (!load_element(scope, node))
            result = 0;
      }

      else if (strcmp(node->name, "group") == 0)
      {
         if (!load_group(scope, node))
            result = 0;
      }

      else if (strcmp(node->name, "view") == 0)
         ++(*view_count);
   }

   return result;
}
