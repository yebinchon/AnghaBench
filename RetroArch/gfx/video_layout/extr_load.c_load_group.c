
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int view_t ;
typedef int scope_t ;
typedef int rxml_node_t ;


 int load_view (int *,int *,int *,int) ;
 int * scope_add_group (int *) ;
 int scope_pop (int *) ;
 int scope_push (int *) ;

__attribute__((used)) static bool load_group(scope_t *scope, rxml_node_t *node)
{
   bool result = 1;

   view_t *group = scope_add_group(scope);

   scope_push(scope);

   if (!load_view(scope, group, node, 1))
      result = 0;

   scope_pop(scope);

   return result;
}
