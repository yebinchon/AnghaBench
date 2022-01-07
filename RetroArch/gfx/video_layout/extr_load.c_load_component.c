
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* video_layout_text_align_t ;
typedef int scope_t ;
struct TYPE_17__ {int name; struct TYPE_17__* next; struct TYPE_17__* children; } ;
typedef TYPE_5__ rxml_node_t ;
struct TYPE_15__ {void* align; void* max_state; void* digits; } ;
struct TYPE_14__ {void* align; int string; } ;
struct TYPE_13__ {int alpha_file; int file; } ;
struct TYPE_16__ {TYPE_3__ counter; TYPE_2__ text; TYPE_1__ image; } ;
struct TYPE_18__ {int type; TYPE_4__ attr; int color; int bounds; void* enabled_state; } ;
typedef TYPE_6__ component_t ;
typedef scalar_t__ comp_type_t ;


 int RARCH_LOG (char*,int ) ;
 scalar_t__ comp_type_from_str (int ) ;
 int component_init (TYPE_6__*,scalar_t__) ;
 void* get_int (int ) ;
 int parse_bounds (int *,TYPE_5__*) ;
 int parse_color (int *,TYPE_5__*) ;
 char* rxml_node_attrib (TYPE_5__*,char*) ;
 int scope_eval (int *,char const*) ;
 int set_string (int *,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool load_component(scope_t *scope, component_t *comp, rxml_node_t *node)
{
   const char *state;
   const char *attr;
   rxml_node_t *n;
   comp_type_t type = comp_type_from_str(node->name);
   bool result = 1;

   if (type == 128)
   {
      RARCH_LOG("video_layout: invalid component <%s />\n", node->name);
      return 0;
   }

   component_init(comp, type);

   if ((state = rxml_node_attrib(node, "state")))
      comp->enabled_state = get_int(scope_eval(scope, state));

   for (n = node->children; n; n = n->next)
   {
      if (strcmp(n->name, "bounds") == 0)
         comp->bounds = parse_bounds(scope, n);

      else if (strcmp(n->name, "color") == 0)
         comp->color = parse_color(scope, n);
   }

   switch (comp->type)
   {
      case 128:
         break;
      case 130:
         break;
      case 132:
         break;
      case 143:
         break;
      case 139:
         {
            if (!(attr = rxml_node_attrib(node, "file")))
            {
               RARCH_LOG("video_layout: invalid component <%s />, missing 'file' attribute\n", node->name);
               result = 0;
            }
            set_string(&comp->attr.image.file, scope_eval(scope, attr));

            if ((attr = rxml_node_attrib(node, "alphafile")))
               set_string(&comp->attr.image.alpha_file, scope_eval(scope, attr));
         }
         break;
      case 129:
         {
            if (!(attr = rxml_node_attrib(node, "string")))
            {
               RARCH_LOG("video_layout: invalid component <%s />, missing 'string' attribute\n", node->name);
               result = 0;
            }
            set_string(&comp->attr.text.string, scope_eval(scope, attr));

            if ((attr = rxml_node_attrib(node, "align")))
               comp->attr.text.align = (video_layout_text_align_t)get_int(scope_eval(scope, attr));
         }
         break;
      case 144:
         {
            if ((attr = rxml_node_attrib(node, "digits")))
               comp->attr.counter.digits = get_int(scope_eval(scope, attr));

            if ((attr = rxml_node_attrib(node, "maxstate")))
               comp->attr.counter.max_state = get_int(scope_eval(scope, attr));

            if ((attr = rxml_node_attrib(node, "align")))
               comp->attr.counter.align = (video_layout_text_align_t)get_int(scope_eval(scope, attr));
         }
         break;
      case 140:
         break;
      case 142:
         break;
      case 141:
         break;
      case 134:
         break;
      case 133:
         break;
      case 138:
         break;
      case 137:
         break;
      case 136:
         break;
      case 135:
         break;
      case 131:
         break;
   }

   return result;
}
