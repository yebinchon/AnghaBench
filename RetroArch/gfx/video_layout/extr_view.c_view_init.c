
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ screens_count; int * screens; scalar_t__ layers_count; int * layers; int render_bounds; int bounds; int name; } ;
typedef TYPE_1__ view_t ;


 int init_string (char const*) ;
 int make_bounds () ;
 int make_bounds_unit () ;

void view_init(view_t *view, const char *name)
{
   view->name = init_string(name);
   view->bounds = make_bounds();
   view->render_bounds = make_bounds_unit();
   view->layers = ((void*)0);
   view->layers_count = 0;
   view->screens = ((void*)0);
   view->screens_count = 0;
}
