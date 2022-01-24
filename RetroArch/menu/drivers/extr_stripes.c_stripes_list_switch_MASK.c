#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ categories_selection_ptr; scalar_t__ categories_selection_ptr_old; int categories_active_idx; float categories_passive_width; unsigned int categories_active_idx_old; int /*<<< orphan*/  selection_ptr_old; int /*<<< orphan*/  selection_buf_old; int /*<<< orphan*/  categories_x_pos; } ;
typedef  TYPE_2__ stripes_handle_t ;
struct TYPE_17__ {scalar_t__ menu_horizontal_animation; } ;
struct TYPE_19__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_20__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ menu_entry_t ;
struct TYPE_21__ {float target_value; int tag; int /*<<< orphan*/ * subject; int /*<<< orphan*/ * cb; int /*<<< orphan*/  easing_enum; int /*<<< orphan*/  duration; } ;
typedef  TYPE_5__ menu_animation_ctx_entry_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  EASING_OUT_QUAD ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_OFF ; 
 int /*<<< orphan*/  STRIPES_DELAY ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC16(stripes_handle_t *stripes)
{
   menu_animation_ctx_entry_t anim_entry;
   int dir                    = -1;
   file_list_t *selection_buf = FUNC2(0);
   size_t selection           = FUNC5();
   settings_t *settings = FUNC0();

   if (stripes->categories_selection_ptr > stripes->categories_selection_ptr_old)
      dir = 1;

   stripes->categories_active_idx += dir;

   FUNC9(stripes);

   anim_entry.duration     = STRIPES_DELAY;
   anim_entry.target_value = stripes->categories_passive_width
      * -(float)stripes->categories_selection_ptr;
   anim_entry.subject      = &stripes->categories_x_pos;
   anim_entry.easing_enum  = EASING_OUT_QUAD;
   /* TODO/FIXME - integer conversion resulted in change of sign */
   anim_entry.tag          = -1;
   anim_entry.cb           = NULL;

   if (anim_entry.subject)
      FUNC1(&anim_entry);

   dir = -1;
   if (stripes->categories_selection_ptr > stripes->categories_selection_ptr_old)
      dir = 1;

   FUNC11(stripes, stripes->selection_buf_old,
         dir, stripes->selection_ptr_old);

   /* Check if we are to have horizontal animations. */
   if (settings->bools.menu_horizontal_animation)
      FUNC10(stripes, selection_buf, dir, selection);
   stripes->categories_active_idx_old = (unsigned)stripes->categories_selection_ptr;

   if (!FUNC8(FUNC13('R'),
            FUNC6(MENU_ENUM_LABEL_VALUE_OFF)))
   {
      menu_entry_t entry;

      FUNC4(&entry);
      FUNC3(&entry, 0, selection, NULL, true);

      if (!FUNC7(entry.path))
         FUNC12(stripes, entry.path, 0 /* will be ignored */);

      FUNC15(stripes, 0, 'R');
      FUNC14(stripes);
   }
   if (!FUNC8(FUNC13('L'),
            FUNC6(MENU_ENUM_LABEL_VALUE_OFF)))
   {
      menu_entry_t entry;

      FUNC4(&entry);
      FUNC3(&entry, 0, selection, NULL, true);

      if (!FUNC7(entry.path))
         FUNC12(stripes, entry.path, 0 /* will be ignored */);

      FUNC15(stripes, 0, 'L');
      FUNC14(stripes);
   }
}