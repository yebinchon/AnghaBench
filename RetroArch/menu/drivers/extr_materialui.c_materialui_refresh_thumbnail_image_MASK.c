#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {float delay_timer; } ;
struct TYPE_6__ {TYPE_4__ secondary; TYPE_4__ primary; } ;
struct TYPE_7__ {TYPE_1__ thumbnails; } ;
typedef  TYPE_2__ materialui_node_t ;
struct TYPE_8__ {scalar_t__ list_view_type; } ;
typedef  TYPE_3__ materialui_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 scalar_t__ MUI_LIST_VIEW_DEFAULT ; 
 scalar_t__ MUI_LIST_VIEW_PLAYLIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 float FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(void *userdata, unsigned i)
{
   materialui_handle_t *mui = (materialui_handle_t*)userdata;

   if (!mui)
      return;

   /* Only refresh thumbnails if we are currently viewing
    * a playlist with thumbnails enabled */
   if ((mui->list_view_type == MUI_LIST_VIEW_DEFAULT) ||
       (mui->list_view_type == MUI_LIST_VIEW_PLAYLIST))
      return;

   /* Only refresh thumbnails if the current entry is
    * on-screen */
   if (FUNC1(mui, (size_t)i))
   {
      file_list_t *list       = FUNC2(0);
      materialui_node_t *node = NULL;
      float stream_delay      = FUNC3();

      if (!list)
         return;

      node = (materialui_node_t*)FUNC0(list, (size_t)i);

      if (!node)
         return;

      /* Reset existing thumbnails */
      FUNC4(&node->thumbnails.primary);
      FUNC4(&node->thumbnails.secondary);

      /* No need to actually request thumbnails here
       * > Just set delay timer to the current maximum
       *   value, and thumbnails will be processed via
       *   regular means on the next frame */
      node->thumbnails.primary.delay_timer   = stream_delay;
      node->thumbnails.secondary.delay_timer = stream_delay;
   }
}