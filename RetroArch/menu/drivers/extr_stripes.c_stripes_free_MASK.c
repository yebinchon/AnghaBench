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
struct TYPE_6__ {int /*<<< orphan*/  bg_file_path; int /*<<< orphan*/  left_thumbnail_file_path; int /*<<< orphan*/  thumbnail_file_path; int /*<<< orphan*/  savestate_thumbnail_file_path; int /*<<< orphan*/  thumbnail_content; int /*<<< orphan*/  thumbnail_system; int /*<<< orphan*/  box_message; TYPE_2__ raster_block2; TYPE_1__ raster_block; int /*<<< orphan*/ * horizontal_list; int /*<<< orphan*/ * selection_buf_old; } ;
typedef  TYPE_3__ stripes_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;

   if (stripes)
   {
      if (stripes->selection_buf_old)
      {
         FUNC4(stripes->selection_buf_old, false);
         FUNC0(stripes->selection_buf_old);
      }

      if (stripes->horizontal_list)
      {
         FUNC4(stripes->horizontal_list, false);
         FUNC0(stripes->horizontal_list);
      }

      stripes->selection_buf_old = NULL;
      stripes->horizontal_list   = NULL;

      FUNC5(&stripes->raster_block.carr);
      FUNC5(&stripes->raster_block2.carr);

      if (!FUNC3(stripes->box_message))
         FUNC2(stripes->box_message);
      if (!FUNC3(stripes->thumbnail_system))
         FUNC2(stripes->thumbnail_system);
      if (!FUNC3(stripes->thumbnail_content))
         FUNC2(stripes->thumbnail_content);
      if (!FUNC3(stripes->savestate_thumbnail_file_path))
         FUNC2(stripes->savestate_thumbnail_file_path);
      if (!FUNC3(stripes->thumbnail_file_path))
         FUNC2(stripes->thumbnail_file_path);
      if (!FUNC3(stripes->left_thumbnail_file_path))
         FUNC2(stripes->left_thumbnail_file_path);
      if (!FUNC3(stripes->bg_file_path))
         FUNC2(stripes->bg_file_path);
   }

   FUNC1(NULL, NULL);
}