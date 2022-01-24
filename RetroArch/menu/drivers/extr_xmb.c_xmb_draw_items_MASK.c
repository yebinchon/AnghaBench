#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int alpha; } ;
typedef  TYPE_1__ xmb_node_t ;
struct TYPE_22__ {size_t system_tab_end; TYPE_5__* selection_buf_old; } ;
typedef  TYPE_2__ xmb_handle_t ;
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  scalar_t__ uint8_t ;
struct TYPE_23__ {int label_enabled; int sublabel_enabled; } ;
typedef  TYPE_3__ menu_entry_t ;
struct TYPE_24__ {int scale_x; int scale_y; int scale_z; int scale_enable; scalar_t__ rotation; int /*<<< orphan*/ * matrix; } ;
typedef  TYPE_4__ menu_display_ctx_rotate_draw_t ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_25__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_5__ file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENTRIES_CTL_START_GET ; 
 size_t FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,size_t,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,unsigned int,size_t,unsigned int,unsigned int*,unsigned int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,TYPE_5__*,float*,size_t,size_t,unsigned int,unsigned int) ; 
 TYPE_1__* FUNC10 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static void FUNC11(
      video_frame_info_t *video_info,
      xmb_handle_t *xmb,
      file_list_t *list,
      size_t current, size_t cat_selection_ptr, float *color,
      unsigned width, unsigned height)
{
   size_t i;
   unsigned first, last;
   math_matrix_4x4 mymat;
   menu_display_ctx_rotate_draw_t rotate_draw;
   xmb_node_t *core_node       = NULL;
   size_t end                  = 0;

   if (!list || !list->size || !xmb)
      return;

   if (cat_selection_ptr > xmb->system_tab_end)
      core_node = FUNC10(
            xmb, (unsigned)(cat_selection_ptr - (xmb->system_tab_end + 1)));

   end                      = FUNC0(list);

   rotate_draw.matrix       = &mymat;
   rotate_draw.rotation     = 0;
   rotate_draw.scale_x      = 1;
   rotate_draw.scale_y      = 1;
   rotate_draw.scale_z      = 1;
   rotate_draw.scale_enable = true;

   FUNC4(&rotate_draw, video_info);

   FUNC5(MENU_ENTRIES_CTL_START_GET, &i);

   if (list == xmb->selection_buf_old)
   {
      xmb_node_t *node = (xmb_node_t*)
         FUNC1(list, current);

      if (node && (uint8_t)(255 * node->alpha) == 0)
         return;

      i = 0;
   }

   first = (unsigned)i;
   last  = (unsigned)(end - 1);

   FUNC8(xmb, height, end, (unsigned)current, &first, &last);

   FUNC2(video_info);

   for (i = first; i <= last; i++)
   {
      int ret;
      menu_entry_t entry;
      FUNC7(&entry);
      entry.label_enabled      = false;
      entry.sublabel_enabled   = (i == current);
      FUNC6(&entry, 0, i, list, true);
      ret = FUNC9(video_info,
            &entry,
            &mymat,
            xmb, core_node,
            list, color,
            i, current,
            width, height);
      if (ret == -1)
         break;
   }

   FUNC3(video_info);
}