#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_5__ {float y; scalar_t__ entry_height; } ;
typedef  TYPE_1__ materialui_node_t ;
struct TYPE_6__ {int landscape_entry_margin; int margin; float scroll_y; scalar_t__ nav_bar_layout_width; } ;
typedef  TYPE_2__ materialui_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,unsigned int,unsigned int,unsigned int,unsigned int,float*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
      materialui_handle_t *mui, video_frame_info_t *video_info,
      unsigned width, unsigned height, unsigned header_height, int x_offset,
      size_t selection, float *color)
{
   /* Only draw highlight if selection is onscreen */
   if (FUNC1(mui, selection))
   {
      file_list_t *list        = NULL;
      materialui_node_t *node  = NULL;
      int highlight_x          = x_offset;
      int highlight_y          = 0;
      int highlight_width      = (int)width - (int)mui->nav_bar_layout_width;
      int highlight_height     = 0;

      /* If landscape optimisations are enabled/active,
       * adjust highlight layout */
      if (mui->landscape_entry_margin > 0)
      {
         highlight_x     += (int)mui->landscape_entry_margin - (int)mui->margin;
         highlight_width -= (int)(2 * mui->landscape_entry_margin) - (int)(2 * mui->margin);
         highlight_width  = (highlight_width < 0) ? 0 : highlight_width;
      }

      list = FUNC3(0);
      if (!list)
         return;

      node = (materialui_node_t*)FUNC0(list, selection);
      if (!node)
         return;

      /* Now we have a valid node, can determine
       * highlight y position and height...
       * > Note: We round y position down and add 1 to
       *   the height in order to avoid obvious 'seams'
       *   when entries have dividers (rounding errors
       *   would otherwise cause 1px vertical gaps) */
      highlight_y      = (int)((float)header_height - mui->scroll_y + node->y);
      highlight_height = (int)(node->entry_height + 1.5f);

      /* Draw highlight quad */
      FUNC2(
            video_info,
            highlight_x,
            highlight_y,
            (unsigned)highlight_width,
            (unsigned)highlight_height,
            width,
            height,
            color);
   }
}