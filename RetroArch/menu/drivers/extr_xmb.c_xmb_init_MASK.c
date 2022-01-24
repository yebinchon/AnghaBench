#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* selection_buf_old; int depth; int old_depth; size_t system_tab_end; void* horizontal_list; int /*<<< orphan*/  thumbnail_path_data; int /*<<< orphan*/ * tabs; scalar_t__ alpha; scalar_t__ textures_arrow_alpha; scalar_t__ categories_x_pos; scalar_t__ x; scalar_t__ categories_active_idx_old; scalar_t__ categories_active_idx; } ;
typedef  TYPE_3__ xmb_handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  kiosk_mode_enable; scalar_t__ menu_content_show_add; scalar_t__ menu_content_show_netplay; scalar_t__ menu_content_show_video; scalar_t__ menu_content_show_music; scalar_t__ menu_content_show_images; scalar_t__ menu_content_show_history; scalar_t__ menu_content_show_favorites; scalar_t__ menu_content_show_settings; } ;
struct TYPE_8__ {float menu_scale_factor; } ;
struct TYPE_11__ {TYPE_2__ bools; TYPE_1__ floats; } ;
typedef  TYPE_4__ settings_t ;
typedef  void menu_handle_t ;
typedef  void file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_MENU_CTL_UNSET_PREVENT_POPULATE ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_ADD ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_FAVORITES ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_HISTORY ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_IMAGES ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_MAIN ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_MUSIC ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_NETPLAY ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_SETTINGS ; 
 int /*<<< orphan*/  XMB_SYSTEM_TAB_VIDEO ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 double FUNC10 (float,double) ; 
 int* scale_mod ; 
 int /*<<< orphan*/  FUNC11 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 

__attribute__((used)) static void *FUNC15(void **userdata, bool video_is_threaded)
{
   unsigned width, height;
   int i;
   xmb_handle_t *xmb          = NULL;
   settings_t *settings       = FUNC1();
   menu_handle_t *menu        = (menu_handle_t*)FUNC0(1, sizeof(*menu));
   float scale_value          = settings->floats.menu_scale_factor * 100.0f;

   /* scaling multiplier formulas made from these values:     */
   /* xmb_scale 50 = {2.5, 2.5,   2, 1.7, 2.5,   4, 2.4, 2.5} */
   /* xmb_scale 75 = {  2, 1.6, 1.6, 1.4, 1.5, 2.3, 1.9, 1.3} */

   if (scale_value < 100)
   {
      /* text length & word wrap (base 35 apply to file browser, 1st column) */
      scale_mod[0] = -0.03 * scale_value + 4.083;
      /* playlist text length when thumbnail is ON (small, base 40) */
      scale_mod[1] = -0.03 * scale_value + 3.95;
      /* playlist text length when thumbnail is OFF (large, base 70) */
      scale_mod[2] = -0.02 * scale_value + 3.033;
      /* sub-label length & word wrap */
      scale_mod[3] = -0.014 * scale_value + 2.416;
      /* thumbnail size & vertical margin from top */
      scale_mod[4] = -0.03 * scale_value + 3.916;
      /* thumbnail horizontal left margin (horizontal positioning) */
      scale_mod[5] = -0.06 * scale_value + 6.933;
      /* margin before 2nd column start (shaders parameters, cheats...) */
      scale_mod[6] = -0.028 * scale_value + 3.866;
      /* text length & word wrap (base 35 apply to 2nd column in cheats, shaders, etc) */
      scale_mod[7] = 134.179 * FUNC10(scale_value, -1.0778);

      for (i = 0; i < 8; i++)
         if (scale_mod[i] < 1)
            scale_mod[i] = 1;
   }

   if (!menu)
      return NULL;

   if (!FUNC5(video_is_threaded))
   {
      FUNC3(menu);
      return NULL;
   }

   FUNC11(&width, &height);

   xmb = (xmb_handle_t*)FUNC0(1, sizeof(xmb_handle_t));

   if (!xmb)
   {
      FUNC3(menu);
      return NULL;
   }

   *userdata = xmb;

   xmb->selection_buf_old     = (file_list_t*)FUNC0(1, sizeof(file_list_t));

   if (!xmb->selection_buf_old)
      goto error;

   xmb->categories_active_idx         = 0;
   xmb->categories_active_idx_old     = 0;
   xmb->x                             = 0;
   xmb->categories_x_pos              = 0;
   xmb->textures_arrow_alpha          = 0;
   xmb->depth                         = 1;
   xmb->old_depth                     = 1;
   xmb->alpha                         = 0;

   xmb->system_tab_end                = 0;
   xmb->tabs[xmb->system_tab_end]     = XMB_SYSTEM_TAB_MAIN;
   if (settings->bools.menu_content_show_settings && !settings->bools.kiosk_mode_enable)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_SETTINGS;
   if (settings->bools.menu_content_show_favorites)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_FAVORITES;
   if (settings->bools.menu_content_show_history)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_HISTORY;
#ifdef HAVE_IMAGEVIEWER
   if (settings->bools.menu_content_show_images)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_IMAGES;
#endif
   if (settings->bools.menu_content_show_music)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_MUSIC;
#if defined(HAVE_FFMPEG) || defined(HAVE_MPV)
   if (settings->bools.menu_content_show_video)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_VIDEO;
#endif
#ifdef HAVE_NETWORKING
   if (settings->bools.menu_content_show_netplay)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_NETPLAY;
#endif
#ifdef HAVE_LIBRETRODB
   if (settings->bools.menu_content_show_add && !settings->bools.kiosk_mode_enable)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_ADD;
#endif

   FUNC8(RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, NULL);

   /* TODO/FIXME - we don't use framebuffer at all
    * for XMB, we should refactor this dependency
    * away. */

   FUNC7(width);
   FUNC6(height);

   FUNC4();

   xmb->horizontal_list         = (file_list_t*)FUNC0(1, sizeof(file_list_t));

   if (xmb->horizontal_list)
      FUNC13(xmb);

   FUNC14(xmb);

   xmb->thumbnail_path_data = FUNC9();
   if (!xmb->thumbnail_path_data)
      goto error;

   return menu;

error:
   FUNC3(menu);

   if (xmb->selection_buf_old)
      FUNC3(xmb->selection_buf_old);
   xmb->selection_buf_old = NULL;
   if (xmb->horizontal_list)
   {
      FUNC12(xmb->horizontal_list, false);
      FUNC2(xmb->horizontal_list);
   }
   xmb->horizontal_list = NULL;
   return NULL;
}