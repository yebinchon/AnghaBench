#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int thumbnail_load_pending; int force_redraw; int /*<<< orphan*/  thumbnail_path_data; int /*<<< orphan*/  left_thumbnail_queue_size; void* entry_has_left_thumbnail; scalar_t__ show_fs_thumbnail; int /*<<< orphan*/  thumbnail_queue_size; void* entry_has_thumbnail; } ;
typedef  TYPE_1__ rgui_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_THUMBNAIL_LEFT ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_RIGHT ; 
 int /*<<< orphan*/  fs_thumbnail ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  mini_left_thumbnail ; 
 int /*<<< orphan*/  mini_thumbnail ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,unsigned int,int,int) ; 

__attribute__((used)) static void FUNC6(rgui_t *rgui, bool download_missing)
{
   const char *thumbnail_path      = NULL;
   const char *left_thumbnail_path = NULL;
   bool thumbnails_missing         = false;
   
   /* Right (or fullscreen) thumbnail */
   if (FUNC1(rgui->thumbnail_path_data,
         MENU_THUMBNAIL_RIGHT, &thumbnail_path))
   {
      rgui->entry_has_thumbnail = FUNC4(
            rgui->show_fs_thumbnail ? &fs_thumbnail : &mini_thumbnail,
            MENU_THUMBNAIL_RIGHT,
            &rgui->thumbnail_queue_size,
            thumbnail_path,
            &thumbnails_missing);
   }
   
   /* Left thumbnail
    * (Note: there is no need to load this when viewing
    * fullscreen thumbnails) */
   if (!rgui->show_fs_thumbnail)
   {
      if (FUNC1(rgui->thumbnail_path_data,
            MENU_THUMBNAIL_LEFT, &left_thumbnail_path))
      {
         rgui->entry_has_left_thumbnail = FUNC4(
               &mini_left_thumbnail,
               MENU_THUMBNAIL_LEFT,
               &rgui->left_thumbnail_queue_size,
               left_thumbnail_path,
               &thumbnails_missing);
      }
   }
   
   /* Reset 'load pending' state */
   rgui->thumbnail_load_pending = false;
   
   /* Force a redraw (so 'entry_has_thumbnail' values are
    * applied immediately) */
   rgui->force_redraw = true;
   
#ifdef HAVE_NETWORKING
   /* On demand thumbnail downloads */
   if (thumbnails_missing && download_missing)
   {
      const char *system = NULL;

      if (menu_thumbnail_get_system(rgui->thumbnail_path_data, &system))
         task_push_pl_entry_thumbnail_download(system,
               playlist_get_cached(), (unsigned)menu_navigation_get_selection(),
               false, true);
   }
#endif
}