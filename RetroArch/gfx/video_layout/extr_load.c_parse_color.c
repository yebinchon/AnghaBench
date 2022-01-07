
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* a; void* b; void* g; void* r; } ;
typedef TYPE_1__ video_layout_color_t ;
typedef int scope_t ;
typedef int rxml_node_t ;


 void* get_dec (char const*) ;
 TYPE_1__ make_color_white () ;
 int rxml_node_attrib (int *,char*) ;
 char* scope_eval (int *,int ) ;

__attribute__((used)) static video_layout_color_t parse_color(scope_t *scope, rxml_node_t *node)
{
   const char *prop;
   video_layout_color_t color = make_color_white();

   if ((prop = scope_eval(scope, rxml_node_attrib(node, "red")))) color.r = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "green")))) color.g = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "blue")))) color.b = get_dec(prop);
   if ((prop = scope_eval(scope, rxml_node_attrib(node, "alpha")))) color.a = get_dec(prop);

   return color;
}
