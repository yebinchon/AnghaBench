#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {void* bounds; } ;
typedef  TYPE_2__ view_t ;
typedef  int /*<<< orphan*/  video_layout_orientation_t ;
typedef  int /*<<< orphan*/  video_layout_color_t ;
typedef  void* video_layout_bounds_t ;
typedef  int /*<<< orphan*/  scope_t ;
struct TYPE_27__ {int /*<<< orphan*/ * name; struct TYPE_27__* next; struct TYPE_27__* children; } ;
typedef  TYPE_3__ rxml_node_t ;
typedef  int /*<<< orphan*/  layer_t ;
struct TYPE_28__ {int i_raw; int components_count; void* bounds; TYPE_1__* components; void* i_mask; void* i_bind; void* o_bind; } ;
typedef  TYPE_4__ element_t ;
struct TYPE_25__ {int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  VIDEO_LAYOUT_ROT0 ; 
 void* FUNC1 (void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 char* FUNC15 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC25 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC27(scope_t *scope, view_t *view, rxml_node_t *node, bool is_named)
{
   bool result, has_bounds;
   rxml_node_t *n;
   rxml_node_t *o;
   int i;

   if (is_named)
   {
      const char *name;

      if (!(name = FUNC15(node, "name")))
      {
         FUNC0("video_layout: <view> is missing 'name' attribute\n");
         return false;
      }

      FUNC26(view, FUNC16(scope, name));
   }

   result     = true;
   has_bounds = false;

   for (n = node->children; n; n = n->next)
   {
      video_layout_color_t       n_color;
      video_layout_bounds_t      n_bounds;
      video_layout_orientation_t n_orient;

      if (FUNC22(n->name, "param") == 0)
      {
         if (!FUNC7(scope, n, true))
            result = false;
         continue;
      }

      else if (FUNC22(n->name, "bounds") == 0)
      {
         view->bounds = FUNC12(scope, n);
         has_bounds = true;
         continue;
      }

      n_color  = FUNC10();
      n_bounds = FUNC9();
      n_orient = VIDEO_LAYOUT_ROT0;

      for (o = n->children; o; o = o->next)
      {
         if (FUNC22(o->name, "color") == 0)
            n_color = FUNC13(scope, o);

         else if (FUNC22(o->name, "bounds") == 0)
            n_bounds = FUNC12(scope, o);

         else if (FUNC22(o->name, "orientation") == 0)
            n_orient = FUNC14(scope, o);
      }

      if (FUNC22(n->name, "group") == 0)
      {
         const char *ref;
         if ((ref = FUNC15(n, "ref")))
         {
            view_t *group;
            if ((group = FUNC18(scope, FUNC16(scope, ref))))
            {
               FUNC11(scope, view, group, has_bounds, n_bounds, n_orient, n_color);
            }
            else
            {
               FUNC0("video_layout: group \"%s\" is missing\n", FUNC16(scope, ref));
               result = false;
            }
         }
         else
         {
            FUNC0("video_layout: <group> is missing 'ref' attribute\n");
            result = false;
         }
      }

      else if (FUNC22(n->name, "repeat") == 0)
      {
         const char *count_s;
         int count;

         if (!(count_s = FUNC15(n, "count")))
         {
            FUNC0("video_layout: <repeat> is missing 'count' attribute\n");
            result = false;
            continue;
         }

         count = FUNC5(FUNC16(scope, count_s));

         FUNC20(scope);

         for (o = n->children; o; o = o->next)
         {
            if (FUNC22(o->name, "param") == 0)
            {
               if (!FUNC7(scope, o, true))
                  result = false;
            }
         }

         for (i = 0; i < count; ++i)
         {
            view_t rep;
            FUNC26(&rep, NULL);

            if (!FUNC27(scope, &rep, n, false))
               result = false;

            FUNC11(scope, view, &rep, has_bounds, n_bounds, n_orient, n_color);

            FUNC24(&rep);

            FUNC21(scope);
         }

         FUNC19(scope);
      }

      else /* element */
      {
         layer_t *layer;
         element_t *elem;

         layer = FUNC25(view, n->name);
         elem = FUNC6(layer);

         if (FUNC22(n->name, "screen") == 0)
         {
            if (!FUNC8(scope, elem, n))
               result = false;
         }
         else
         {
            const char *elem_name;
            const char *attr;

            if ((elem_name = FUNC15(n, "element")))
            {
               element_t *elem_src;
               if ((elem_src = FUNC17(scope, elem_name)))
               {
                  FUNC4(elem, elem_src);

                  if ((attr = FUNC15(n, "name")))
                     elem->o_bind = FUNC23(FUNC16(scope, attr));

                  if ((attr = FUNC15(n, "inputtag")))
                     elem->i_bind = FUNC23(FUNC16(scope, attr));

                  if ((attr = FUNC15(n, "inputmask")))
                     elem->i_mask = FUNC5(FUNC16(scope, attr));

                  if ((attr = FUNC15(n, "inputraw")))
                     elem->i_raw = FUNC5(FUNC16(scope, attr)) ? true : false;
               }
               else
               {
                  FUNC0("video_layout: element \"%s\" is missing\n", FUNC16(scope, elem_name));
                  result = false;
               }
            }
            else
            {
               FUNC0("video_layout: <%s> is missing 'element' attribute\n", n->name);
               result = false;
            }
         }

         for (i = 0; i < elem->components_count; ++i)
            FUNC2(&elem->components->color, &n_color);

         elem->bounds = n_bounds;

         if (n_orient)
            FUNC3(elem, n_orient);

         if (!has_bounds)
            view->bounds = FUNC1(&view->bounds, &elem->bounds);
      }
   }

   return result;
}