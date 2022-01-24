#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ menu_rgui_aspect_ratio_lock; } ;
struct TYPE_14__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ rgui_video_settings_t ;
struct TYPE_16__ {int ignore_resize_events; TYPE_3__ content_video_settings; TYPE_3__ menu_video_settings; } ;
typedef  TYPE_4__ rgui_t ;
struct TYPE_17__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ RGUI_ASPECT_RATIO_LOCK_NONE ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_5__ rgui_upscale_buf ; 

__attribute__((used)) static void FUNC6(void *userdata, bool menu_on)
{
   rgui_t *rgui = (rgui_t*)userdata;
   settings_t *settings = FUNC0();
   
   /* TODO/FIXME - when we close RetroArch, this function
    * gets called and settings is NULL at this point. 
    * Maybe fundamentally change control flow so that on RetroArch
    * exit, this doesn't get called. */
   if (!rgui || !settings)
      return;
   
   if (settings->uints.menu_rgui_aspect_ratio_lock != RGUI_ASPECT_RATIO_LOCK_NONE)
   {
      if (menu_on)
      {
         /* Cache content video settings */
         FUNC2(&rgui->content_video_settings);
         
         /* Update menu viewport */
         FUNC5(rgui);
         
         /* Apply menu video settings */
         FUNC4(rgui, &rgui->menu_video_settings, false);
      }
      else
      {
         /* Restore content video settings *if* user
          * has not changed video settings since menu was
          * last toggled on */
         rgui_video_settings_t current_video_settings = {0};
         FUNC2(&current_video_settings);
         
         if (FUNC3(&current_video_settings, &rgui->menu_video_settings))
            FUNC4(rgui, &rgui->content_video_settings, false);
         
         /* Any modified video settings have now been registered,
          * so it is again 'safe' to respond to window resize events */
         rgui->ignore_resize_events = false;
      }
   }
   
   /* Upscaling buffer is only required while menu is on. Save
    * memory by freeing it whenever we switch back to the current
    * content */
   if (!menu_on && rgui_upscale_buf.data)
   {
      FUNC1(rgui_upscale_buf.data);
      rgui_upscale_buf.data = NULL;
   }
}