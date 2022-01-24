#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float alpha; float label_alpha; float y; float zoom; } ;
typedef  TYPE_1__ stripes_node_t ;
struct TYPE_8__ {int icon_size; float items_passive_alpha; float items_passive_zoom; float margins_screen_top; } ;
typedef  TYPE_2__ stripes_handle_t ;
typedef  int /*<<< orphan*/  menu_list_t ;
typedef  int /*<<< orphan*/  menu_entry_t ;
typedef  uintptr_t menu_animation_ctx_tag ;
struct TYPE_9__ {float target_value; float* subject; uintptr_t tag; int /*<<< orphan*/ * cb; int /*<<< orphan*/  easing_enum; int /*<<< orphan*/  duration; } ;
typedef  TYPE_3__ menu_animation_ctx_entry_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  EASING_OUT_QUAD ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_LIST_GET ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_START ; 
 int /*<<< orphan*/  STRIPES_DELAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 () ; 
 float FUNC9 (TYPE_2__*,unsigned int,size_t) ; 
 char* FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static void FUNC12(
      stripes_handle_t *stripes, bool allow_animations)
{
   unsigned i, end, height;
   menu_animation_ctx_tag tag;
   menu_entry_t entry;
   size_t num                 = 0;
   int threshold              = 0;
   menu_list_t     *menu_list = NULL;
   file_list_t *selection_buf = FUNC4(0);
   size_t selection           = FUNC8();
   const char *thumb_ident    = FUNC10('R');
   const char *lft_thumb_ident= FUNC10('L');

   FUNC3(MENU_ENTRIES_CTL_LIST_GET, &menu_list);
   FUNC7(&entry);

   if (!stripes)
      return;

   FUNC6(&entry, 0, selection, NULL, true);

   end       = (unsigned)FUNC5();
   threshold = stripes->icon_size * 10;

   FUNC11(NULL, &height);

   tag       = (uintptr_t)selection_buf;

   FUNC1(&tag);
   FUNC3(MENU_ENTRIES_CTL_SET_START, &num);

   for (i = 0; i < end; i++)
   {
      float iy, real_iy;
      float ia         = stripes->items_passive_alpha;
      float iz         = stripes->items_passive_zoom;
      stripes_node_t *node = (stripes_node_t*)
         FUNC0(selection_buf, i);

      if (!node)
         continue;

      iy      = FUNC9(stripes, i, selection);
      real_iy = iy + stripes->margins_screen_top;

      if (     (!allow_animations)
            || (real_iy < -threshold
            || real_iy > height+threshold))
      {
         node->alpha = node->label_alpha = ia;
         node->y = iy;
         node->zoom = iz;
      }
      else
      {
         menu_animation_ctx_entry_t anim_entry;

         anim_entry.duration     = STRIPES_DELAY;
         anim_entry.target_value = ia;
         anim_entry.subject      = &node->alpha;
         anim_entry.easing_enum  = EASING_OUT_QUAD;
         anim_entry.tag          = tag;
         anim_entry.cb           = NULL;

         FUNC2(&anim_entry);

         anim_entry.subject      = &node->label_alpha;

         FUNC2(&anim_entry);

         anim_entry.target_value = iz;
         anim_entry.subject      = &node->zoom;

         FUNC2(&anim_entry);

         anim_entry.target_value = iy;
         anim_entry.subject      = &node->y;

         FUNC2(&anim_entry);
      }
   }
}