#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {float height; scalar_t__ width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ video_viewport_t ;
struct TYPE_13__ {int /*<<< orphan*/  video_aspect_ratio_idx; } ;
struct TYPE_16__ {TYPE_1__ uints; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_14__ {float height; int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__ width; } ;
struct TYPE_17__ {TYPE_2__ viewport; int /*<<< orphan*/  aspect_ratio_idx; } ;
typedef  TYPE_5__ rgui_video_settings_t ;
struct TYPE_18__ {int aspect_update_pending; } ;
typedef  TYPE_6__ rgui_t ;
struct TYPE_12__ {float value; } ;

/* Variables and functions */
 size_t ASPECT_RATIO_CUSTOM ; 
 int /*<<< orphan*/  CMD_EVENT_VIDEO_SET_ASPECT_RATIO ; 
 TYPE_11__* aspectratio_lut ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 () ; 
 TYPE_3__* FUNC2 () ; 

__attribute__((used)) static void FUNC3(rgui_t *rgui, rgui_video_settings_t *video_settings, bool delay_update)
{
   settings_t *settings        = FUNC1();
   /* Could use settings->video_viewport_custom directly,
    * but this seems to be the standard way of doing it... */
   video_viewport_t *custom_vp = FUNC2();
   
   if (!settings)
      return;
   
   settings->uints.video_aspect_ratio_idx = video_settings->aspect_ratio_idx;
   custom_vp->width = video_settings->viewport.width;
   custom_vp->height = video_settings->viewport.height;
   custom_vp->x = video_settings->viewport.x;
   custom_vp->y = video_settings->viewport.y;
   
   aspectratio_lut[ASPECT_RATIO_CUSTOM].value =
      (float)custom_vp->width / custom_vp->height;
   
   if (delay_update)
      rgui->aspect_update_pending = true;
   else
   {
      FUNC0(CMD_EVENT_VIDEO_SET_ASPECT_RATIO, NULL);
      rgui->aspect_update_pending = false;
   }
}