
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* x; void* y; void* h; void* w; } ;
typedef TYPE_1__ video_layout_bounds_t ;
typedef int scope_t ;
typedef int rxml_node_t ;


 void* get_dec (char const*) ;
 TYPE_1__ make_bounds_unit () ;
 int rxml_node_attrib (int *,char*) ;
 char* scope_eval (int *,int ) ;

__attribute__((used)) static video_layout_bounds_t parse_bounds(scope_t *scope, rxml_node_t *node)
{
   const char *prop;
   video_layout_bounds_t bounds = make_bounds_unit();

   if ((prop = scope_eval(scope, rxml_node_attrib(node, "x")))) bounds.x = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "y")))) bounds.y = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "width")))) bounds.w = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "height")))) bounds.h = get_dec(prop);

   if ((prop = scope_eval(scope, rxml_node_attrib(node, "left")))) bounds.x = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "top")))) bounds.y = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "right")))) bounds.w = get_dec(prop) - bounds.x;
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "bottom")))) bounds.h = get_dec(prop) - bounds.y;

   return bounds;
}
