#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  scalar_t__ uint8_t ;
struct TYPE_17__ {int alpha; } ;
typedef  TYPE_1__ stripes_node_t ;
struct TYPE_18__ {size_t system_tab_end; TYPE_4__* selection_buf_old; } ;
typedef  TYPE_2__ stripes_handle_t ;
typedef  int /*<<< orphan*/  menu_entry_t ;
struct TYPE_19__ {int scale_x; int scale_y; int scale_z; int scale_enable; scalar_t__ rotation; int /*<<< orphan*/ * matrix; } ;
typedef  TYPE_3__ menu_display_ctx_rotate_draw_t ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_20__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_4__ file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENTRIES_CTL_START_GET ; 
 size_t FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,unsigned int,size_t,size_t,unsigned int*,unsigned int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,TYPE_4__*,float*,char const*,char const*,size_t,size_t,unsigned int,unsigned int) ; 
 TYPE_1__* FUNC10 (TYPE_2__*,unsigned int) ; 
 char* FUNC11 (char) ; 

__attribute__((used)) static void FUNC12(
      video_frame_info_t *video_info,
      stripes_handle_t *stripes,
      file_list_t *list,
      size_t current, size_t cat_selection_ptr, float *color,
      unsigned width, unsigned height)
{
   size_t i;
   unsigned first, last;
   math_matrix_4x4 mymat;
   menu_display_ctx_rotate_draw_t rotate_draw;
   stripes_node_t *core_node       = NULL;
   size_t end                  = 0;
   const char *thumb_ident     = FUNC11('R');
   const char *left_thumb_ident= FUNC11('L');

   if (!list || !list->size || !stripes)
      return;

   if (cat_selection_ptr > stripes->system_tab_end)
      core_node = FUNC10(
            stripes, (unsigned)(cat_selection_ptr - (stripes->system_tab_end + 1)));

   end                      = FUNC0(list);

   rotate_draw.matrix       = &mymat;
   rotate_draw.rotation     = 0;
   rotate_draw.scale_x      = 1;
   rotate_draw.scale_y      = 1;
   rotate_draw.scale_z      = 1;
   rotate_draw.scale_enable = true;

   FUNC4(&rotate_draw, video_info);

   FUNC5(MENU_ENTRIES_CTL_START_GET, &i);

   if (list == stripes->selection_buf_old)
   {
      stripes_node_t *node = (stripes_node_t*)
            FUNC1(list, current);

      if (node && (uint8_t)(255 * node->alpha) == 0)
         return;

      i = 0;
   }

   first = i;
   last  = end - 1;

   FUNC8(stripes, height, end, current, &first, &last);

   FUNC2(video_info);

   for (i = first; i <= last; i++)
   {
      int ret;
      menu_entry_t entry;
      FUNC7(&entry);
      FUNC6(&entry, 0, i, list, true);
      ret = FUNC9(video_info,
            &entry,
            &mymat,
            stripes, core_node,
            list, color, thumb_ident, left_thumb_ident,
            i, current,
            width, height);
      if (ret == -1)
         break;
   }

   FUNC3(video_info);
}