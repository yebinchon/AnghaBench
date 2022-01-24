#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int layers_count; int /*<<< orphan*/ * layers; } ;
typedef  TYPE_1__ view_t ;
typedef  int /*<<< orphan*/  layer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*) ; 

layer_t *FUNC3(view_t *view, const char *name)
{
   layer_t *layer = FUNC2(view, name);

   if (!layer)
   {
      FUNC1((void**)&view->layers, sizeof(layer_t), ++view->layers_count);

      layer = &view->layers[view->layers_count - 1];
      FUNC0(layer, name);
   }

   return layer;
}