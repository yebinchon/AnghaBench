
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int view_t ;
struct TYPE_6__ {int * views; } ;
typedef TYPE_1__ view_array_t ;
typedef int scope_t ;
struct TYPE_7__ {int name; struct TYPE_7__* next; struct TYPE_7__* children; } ;
typedef TYPE_2__ rxml_node_t ;


 int load_view (int *,int *,TYPE_2__*,int) ;
 int scope_pop (int *) ;
 int scope_push (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int view_count_screens (int *) ;
 int view_normalize (int *) ;
 int view_sort_layers (int *) ;

__attribute__((used)) static bool load_views(scope_t *scope, view_array_t *view_array, rxml_node_t *root)
{
   rxml_node_t *node;
   bool result = 1;
   int i = 0;

   for (node = root->children; node; node = node->next)
   {
      if (strcmp(node->name, "view") == 0)
      {
         view_t *view;
         view = &view_array->views[i];

         scope_push(scope);

         if (!load_view(scope, view, node, 1))
            result = 0;

         view_sort_layers(view);
         view_normalize(view);
         view_count_screens(view);

         scope_pop(scope);

         ++i;
      }
   }

   return result;
}
