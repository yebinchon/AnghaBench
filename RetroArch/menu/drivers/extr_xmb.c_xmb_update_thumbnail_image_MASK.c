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
struct TYPE_8__ {int /*<<< orphan*/  thumbnail_path_data; int /*<<< orphan*/  left_thumbnail; int /*<<< orphan*/  thumbnail; } ;
typedef  TYPE_3__ xmb_handle_t ;
struct TYPE_7__ {scalar_t__ network_on_demand_thumbnails; } ;
struct TYPE_6__ {int /*<<< orphan*/  menu_thumbnail_upscale_threshold; } ;
struct TYPE_9__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef  TYPE_4__ settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_THUMBNAIL_LEFT ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_RIGHT ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  menu_display_handle_left_thumbnail_upload ; 
 int /*<<< orphan*/  menu_display_handle_thumbnail_upload ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void *data)
{
   settings_t *settings             = FUNC0();
   xmb_handle_t *xmb                = (xmb_handle_t*)data;
   const char *right_thumbnail_path = NULL;
   const char *left_thumbnail_path  = NULL;
   bool supports_rgba               = FUNC8();

   /* Have to wrap `thumbnails_missing` like this to silence
    * brain dead `set but not used` warnings when networking
    * is disabled... */
#ifdef HAVE_NETWORKING
   bool thumbnails_missing          = false;
#endif

   if (!xmb || !settings)
      return;

   if (FUNC2(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT, &right_thumbnail_path))
   {
      if (FUNC4(right_thumbnail_path))
         FUNC6(right_thumbnail_path,
               supports_rgba, settings->uints.menu_thumbnail_upscale_threshold,
               menu_display_handle_thumbnail_upload, NULL);
      else
      {
         FUNC9(&xmb->thumbnail);
#ifdef HAVE_NETWORKING
         thumbnails_missing = true;
#endif
      }
   }
   else
      FUNC9(&xmb->thumbnail);

   if (FUNC2(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT, &left_thumbnail_path))
   {
      if (FUNC4(left_thumbnail_path))
         FUNC6(left_thumbnail_path,
               supports_rgba, settings->uints.menu_thumbnail_upscale_threshold,
               menu_display_handle_left_thumbnail_upload, NULL);
      else
      {
         FUNC9(&xmb->left_thumbnail);
#ifdef HAVE_NETWORKING
         thumbnails_missing = true;
#endif
      }
   }
   else
      FUNC9(&xmb->left_thumbnail);

#ifdef HAVE_NETWORKING
   /* On demand thumbnail downloads */
   if (thumbnails_missing)
   {
      if (settings->bools.network_on_demand_thumbnails)
      {
         const char *system = NULL;

         if (menu_thumbnail_get_system(xmb->thumbnail_path_data, &system))
            task_push_pl_entry_thumbnail_download(system,
                  playlist_get_cached(), (unsigned)menu_navigation_get_selection(),
                  false, true);
      }
   }
#endif
}