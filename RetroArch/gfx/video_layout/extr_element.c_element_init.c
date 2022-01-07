
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int o_bind; int i_bind; int i_mask; int i_raw; int components_count; int * components; int render_bounds; int bounds; int name; } ;
typedef TYPE_1__ element_t ;
typedef int component_t ;


 int * calloc (int,int) ;
 int init_string (char const*) ;
 int make_bounds () ;
 int make_bounds_unit () ;

void element_init(element_t *elem, const char *name, int components_count)
{
   elem->name = init_string(name);
   elem->state = -1;
   elem->o_bind = -1;
   elem->i_bind = -1;
   elem->i_mask = -1;
   elem->i_raw = 0;

   elem->bounds = make_bounds();
   elem->render_bounds = make_bounds_unit();

   elem->components = (component_t*)(components_count > 0 ?
         calloc(components_count, sizeof(component_t)) : ((void*)0));
   elem->components_count = components_count;
}
