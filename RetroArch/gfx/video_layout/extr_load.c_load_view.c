
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_26__ {void* bounds; } ;
typedef TYPE_2__ view_t ;
typedef int video_layout_orientation_t ;
typedef int video_layout_color_t ;
typedef void* video_layout_bounds_t ;
typedef int scope_t ;
struct TYPE_27__ {int * name; struct TYPE_27__* next; struct TYPE_27__* children; } ;
typedef TYPE_3__ rxml_node_t ;
typedef int layer_t ;
struct TYPE_28__ {int i_raw; int components_count; void* bounds; TYPE_1__* components; void* i_mask; void* i_bind; void* o_bind; } ;
typedef TYPE_4__ element_t ;
struct TYPE_25__ {int color; } ;


 int RARCH_LOG (char*,...) ;
 int VIDEO_LAYOUT_ROT0 ;
 void* bounds_union (void**,void**) ;
 int color_mod (int *,int *) ;
 int element_apply_orientation (TYPE_4__*,int ) ;
 int element_copy (TYPE_4__*,TYPE_4__*) ;
 void* get_int (int *) ;
 TYPE_4__* layer_add_element (int *) ;
 int load_param (int *,TYPE_3__*,int) ;
 int load_screen (int *,TYPE_4__*,TYPE_3__*) ;
 void* make_bounds () ;
 int make_color_white () ;
 int merge_group (int *,TYPE_2__*,TYPE_2__*,int,void*,int ,int ) ;
 void* parse_bounds (int *,TYPE_3__*) ;
 int parse_color (int *,TYPE_3__*) ;
 int parse_orientation (int *,TYPE_3__*) ;
 char* rxml_node_attrib (TYPE_3__*,char*) ;
 int * scope_eval (int *,char const*) ;
 TYPE_4__* scope_find_element (int *,char const*) ;
 TYPE_2__* scope_find_group (int *,int *) ;
 int scope_pop (int *) ;
 int scope_push (int *) ;
 int scope_repeat (int *) ;
 scalar_t__ strcmp (int *,char*) ;
 void* video_layout_io_find (int *) ;
 int view_deinit (TYPE_2__*) ;
 int * view_emplace_layer (TYPE_2__*,int *) ;
 int view_init (TYPE_2__*,int *) ;

__attribute__((used)) static bool load_view(scope_t *scope, view_t *view, rxml_node_t *node, bool is_named)
{
   bool result, has_bounds;
   rxml_node_t *n;
   rxml_node_t *o;
   int i;

   if (is_named)
   {
      const char *name;

      if (!(name = rxml_node_attrib(node, "name")))
      {
         RARCH_LOG("video_layout: <view> is missing 'name' attribute\n");
         return 0;
      }

      view_init(view, scope_eval(scope, name));
   }

   result = 1;
   has_bounds = 0;

   for (n = node->children; n; n = n->next)
   {
      video_layout_color_t n_color;
      video_layout_bounds_t n_bounds;
      video_layout_orientation_t n_orient;

      if (strcmp(n->name, "param") == 0)
      {
         if (!load_param(scope, n, 1))
            result = 0;
         continue;
      }

      else if (strcmp(n->name, "bounds") == 0)
      {
         view->bounds = parse_bounds(scope, n);
         has_bounds = 1;
         continue;
      }

      n_color = make_color_white();
      n_bounds = make_bounds();
      n_orient = VIDEO_LAYOUT_ROT0;

      for (o = n->children; o; o = o->next)
      {
         if (strcmp(o->name, "color") == 0)
            n_color = parse_color(scope, o);

         else if (strcmp(o->name, "bounds") == 0)
            n_bounds = parse_bounds(scope, o);

         else if (strcmp(o->name, "orientation") == 0)
            n_orient = parse_orientation(scope, o);
      }

      if (strcmp(n->name, "group") == 0)
      {
         const char *ref;
         if ((ref = rxml_node_attrib(n, "ref")))
         {
            view_t *group;
            if ((group = scope_find_group(scope, scope_eval(scope, ref))))
            {
               merge_group(scope, view, group, has_bounds, n_bounds, n_orient, n_color);
            }
            else
            {
               RARCH_LOG("video_layout: group \"%s\" is missing\n", scope_eval(scope, ref));
               result = 0;
            }
         }
         else
         {
            RARCH_LOG("video_layout: <group> is missing 'ref' attribute\n");
            result = 0;
         }
      }

      else if (strcmp(n->name, "repeat") == 0)
      {
         const char *count_s;
         int count;

         if (!(count_s = rxml_node_attrib(n, "count")))
         {
            RARCH_LOG("video_layout: <repeat> is missing 'count' attribute\n");
            result = 0;
            continue;
         }

         count = get_int(scope_eval(scope, count_s));

         scope_push(scope);

         for (o = n->children; o; o = o->next)
         {
            if (strcmp(o->name, "param") == 0)
            {
               if (!load_param(scope, o, 1))
                  result = 0;
            }
         }

         for (i = 0; i < count; ++i)
         {
            view_t rep;
            view_init(&rep, ((void*)0));

            if (!load_view(scope, &rep, n, 0))
               result = 0;

            merge_group(scope, view, &rep, has_bounds, n_bounds, n_orient, n_color);

            view_deinit(&rep);

            scope_repeat(scope);
         }

         scope_pop(scope);
      }

      else
      {
         layer_t *layer;
         element_t *elem;

         layer = view_emplace_layer(view, n->name);
         elem = layer_add_element(layer);

         if (strcmp(n->name, "screen") == 0)
         {
            if (!load_screen(scope, elem, n))
               result = 0;
         }
         else
         {
            const char *elem_name;
            const char *attr;

            if ((elem_name = rxml_node_attrib(n, "element")))
            {
               element_t *elem_src;
               if ((elem_src = scope_find_element(scope, elem_name)))
               {
                  element_copy(elem, elem_src);

                  if ((attr = rxml_node_attrib(n, "name")))
                     elem->o_bind = video_layout_io_find(scope_eval(scope, attr));

                  if ((attr = rxml_node_attrib(n, "inputtag")))
                     elem->i_bind = video_layout_io_find(scope_eval(scope, attr));

                  if ((attr = rxml_node_attrib(n, "inputmask")))
                     elem->i_mask = get_int(scope_eval(scope, attr));

                  if ((attr = rxml_node_attrib(n, "inputraw")))
                     elem->i_raw = get_int(scope_eval(scope, attr)) ? 1 : 0;
               }
               else
               {
                  RARCH_LOG("video_layout: element \"%s\" is missing\n", scope_eval(scope, elem_name));
                  result = 0;
               }
            }
            else
            {
               RARCH_LOG("video_layout: <%s> is missing 'element' attribute\n", n->name);
               result = 0;
            }
         }

         for (i = 0; i < elem->components_count; ++i)
            color_mod(&elem->components->color, &n_color);

         elem->bounds = n_bounds;

         if (n_orient)
            element_apply_orientation(elem, n_orient);

         if (!has_bounds)
            view->bounds = bounds_union(&view->bounds, &elem->bounds);
      }
   }

   return result;
}
