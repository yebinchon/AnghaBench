#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int x; int w; int y; int h; } ;
struct TYPE_10__ {int layers_count; TYPE_3__* layers; TYPE_2__ bounds; } ;
typedef  TYPE_1__ view_t ;
typedef  TYPE_2__ video_layout_bounds_t ;
struct TYPE_12__ {int elements_count; TYPE_4__* elements; } ;
typedef  TYPE_3__ layer_t ;
struct TYPE_13__ {TYPE_2__ bounds; } ;
typedef  TYPE_4__ element_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_2__ FUNC2 () ; 

void FUNC3(view_t *view)
{
   video_layout_bounds_t dim;
   int i, j;

   if (FUNC1(&view->bounds))
   {
      dim.x = view->bounds.x / view->bounds.w;
      dim.y = view->bounds.y / view->bounds.h;
      dim.w = 1.0f / view->bounds.w;
      dim.h = 1.0f / view->bounds.h;

      if (view->bounds.w < view->bounds.h)
      {
         view->bounds.w = view->bounds.w / view->bounds.h;
         view->bounds.h = 1.f;
      }
      else
      {
         view->bounds.h = view->bounds.h / view->bounds.w;
         view->bounds.w = 1.f;
      }

      view->bounds.x = 0;
      view->bounds.y = 0;
   }
   else
   {
      dim = view->bounds = FUNC2();
   }

   for (i = 0; i < view->layers_count; ++i)
   {
      layer_t *layer;
      layer = &view->layers[i];

      for (j = 0; j < layer->elements_count; ++j)
      {
         element_t *elem;
         elem = &layer->elements[j];

         if (FUNC1(&elem->bounds))
         {
            FUNC0(&elem->bounds, &dim);
         }
         else
         {
            elem->bounds = dim;
         }

         elem->bounds.x -= dim.x;
         elem->bounds.y -= dim.y;
      }
   }
}