
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int components_count; int * components; int render_bounds; int bounds; int state; int name; } ;
typedef TYPE_1__ element_t ;
typedef int component_t ;


 int * calloc (int,int) ;
 int component_copy (int *,int *) ;
 int init_string (int ) ;

void element_copy(element_t *elem, const element_t *src)
{
   int i;

   elem->name = init_string(src->name);
   elem->state = src->state;

   elem->bounds = src->bounds;
   elem->render_bounds = src->render_bounds;

   elem->components = (component_t*)(src->components_count > 0 ?
         calloc(src->components_count, sizeof(component_t)) : ((void*)0));

   for (i = 0; i < src->components_count; ++i)
      component_copy(&elem->components[i], &src->components[i]);

   elem->components_count = src->components_count;
}
