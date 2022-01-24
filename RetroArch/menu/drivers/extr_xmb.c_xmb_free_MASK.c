#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  carr; } ;
struct TYPE_4__ {int /*<<< orphan*/  carr; } ;
struct TYPE_6__ {scalar_t__ thumbnail_path_data; scalar_t__ bg_file_path; scalar_t__ savestate_thumbnail_file_path; scalar_t__ box_message; TYPE_2__ raster_block2; TYPE_1__ raster_block; int /*<<< orphan*/ * horizontal_list; int /*<<< orphan*/ * selection_buf_old; } ;
typedef  TYPE_3__ xmb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   if (xmb)
   {
      if (xmb->selection_buf_old)
      {
         FUNC5(xmb->selection_buf_old, false);
         FUNC0(xmb->selection_buf_old);
      }

      if (xmb->horizontal_list)
      {
         FUNC5(xmb->horizontal_list, false);
         FUNC0(xmb->horizontal_list);
      }

      xmb->selection_buf_old = NULL;
      xmb->horizontal_list   = NULL;

      FUNC4(&xmb->raster_block.carr);
      FUNC4(&xmb->raster_block2.carr);

      if (!FUNC3(xmb->box_message))
         FUNC2(xmb->box_message);
      if (!FUNC3(xmb->savestate_thumbnail_file_path))
         FUNC2(xmb->savestate_thumbnail_file_path);
      if (!FUNC3(xmb->bg_file_path))
         FUNC2(xmb->bg_file_path);

      if (xmb->thumbnail_path_data)
         FUNC2(xmb->thumbnail_path_data);
   }

   FUNC1(NULL, NULL);
}