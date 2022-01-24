#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_16__ ;

/* Type definitions */
struct TYPE_21__ {int layers_count; int /*<<< orphan*/  bounds; TYPE_4__* layers; } ;
typedef  TYPE_2__ view_t ;
typedef  int /*<<< orphan*/  video_layout_orientation_t ;
typedef  int /*<<< orphan*/  video_layout_color_t ;
struct TYPE_22__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_3__ video_layout_bounds_t ;
typedef  int /*<<< orphan*/  scope_t ;
struct TYPE_23__ {int elements_count; int /*<<< orphan*/ * elements; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ layer_t ;
struct TYPE_19__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_24__ {int components_count; TYPE_16__ bounds; TYPE_1__* components; } ;
typedef  TYPE_5__ element_t ;
struct TYPE_20__ {int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_16__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_16__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC6 (TYPE_4__*) ; 
 TYPE_4__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(scope_t *scope, view_t *view, view_t *group,
   bool has_bounds, video_layout_bounds_t n_bounds, video_layout_orientation_t n_orient, video_layout_color_t n_color)
{
   int i, j, k;
   bool constrain = FUNC2(&n_bounds);

   for (i = 0; i < group->layers_count; ++i)
   {
      layer_t *group_layer;
      layer_t *layer;

      group_layer = &group->layers[i];
      layer = FUNC7(view, group_layer->name);

      for (j = 0; j < group_layer->elements_count; ++j)
      {
         element_t *elem;
         elem = FUNC6(layer);

         FUNC5(elem, &group_layer->elements[j]);

         for (k = 0; k < elem->components_count; ++k)
            FUNC3(&elem->components->color, &n_color);

         if (n_orient)
            FUNC4(elem, n_orient);

         if (constrain)
         {
            FUNC0(&elem->bounds, &n_bounds);
            elem->bounds.x += n_bounds.x;
            elem->bounds.y += n_bounds.y;
         }

         if (!has_bounds)
            view->bounds = FUNC1(&view->bounds, &elem->bounds);
      }
   }
}