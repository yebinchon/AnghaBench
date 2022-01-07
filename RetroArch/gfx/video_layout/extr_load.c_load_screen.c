
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int scope_t ;
typedef int rxml_node_t ;
struct TYPE_10__ {TYPE_4__* components; } ;
typedef TYPE_3__ element_t ;
struct TYPE_9__ {int index; } ;
struct TYPE_8__ {TYPE_2__ screen; } ;
struct TYPE_11__ {TYPE_1__ attr; int bounds; } ;
typedef TYPE_4__ component_t ;


 int VIDEO_LAYOUT_C_SCREEN ;
 int component_init (TYPE_4__*,int ) ;
 int element_init (TYPE_3__*,int *,int) ;
 int get_int (int ) ;
 int make_bounds_unit () ;
 char* rxml_node_attrib (int *,char*) ;
 int scope_eval (int *,char const*) ;

__attribute__((used)) static bool load_screen(scope_t *scope, element_t *elem, rxml_node_t *node)
{
   component_t *comp;
   const char *index = rxml_node_attrib(node, "index");

   element_init(elem, ((void*)0), 1);
   comp = &elem->components[0];

   component_init(comp, VIDEO_LAYOUT_C_SCREEN);
   comp->bounds = make_bounds_unit();
   comp->attr.screen.index = get_int(scope_eval(scope, index));

   return 1;
}
