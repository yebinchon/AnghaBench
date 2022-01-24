#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zoom; int /*<<< orphan*/  label_alpha; int /*<<< orphan*/  alpha; scalar_t__ x; int /*<<< orphan*/  y; scalar_t__ fullpath; } ;
typedef  TYPE_1__ stripes_node_t ;
struct TYPE_7__ {int /*<<< orphan*/  items_active_alpha; int /*<<< orphan*/  items_passive_zoom; int /*<<< orphan*/  items_passive_alpha; } ;
typedef  TYPE_2__ stripes_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 size_t FUNC4 () ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC9(void *userdata,
      file_list_t *list,
      const char *path,
      const char *fullpath,
      const char *unused,
      size_t list_size,
      unsigned entry_type)
{
   int current            = 0;
   int i                  = (int)list_size;
   stripes_node_t *node       = NULL;
   stripes_handle_t *stripes      = (stripes_handle_t*)userdata;
   size_t selection       = FUNC4();

   if (!stripes || !list)
      return;

   node = (stripes_node_t*)FUNC1(list, i);

   if (!node)
      node = FUNC7();

   if (!node)
   {
      FUNC0("XMB node could not be allocated.\n");
      return;
   }

   current           = (int)selection;

   if (!FUNC6(fullpath))
   {
      if (node->fullpath)
         FUNC3(node->fullpath);

      node->fullpath = FUNC5(fullpath);
   }

   node->alpha       = stripes->items_passive_alpha;
   node->zoom        = stripes->items_passive_zoom;
   node->label_alpha = node->alpha;
   node->y           = FUNC8(stripes, i, current);
   node->x           = 0;

   if (i == current)
   {
      node->alpha       = stripes->items_active_alpha;
      node->label_alpha = stripes->items_active_alpha;
      node->zoom        = stripes->items_active_alpha;
   }

   FUNC2(list, i, node);
}