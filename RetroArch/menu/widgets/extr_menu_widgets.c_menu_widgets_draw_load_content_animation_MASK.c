#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_20__ {int width; int height; } ;
typedef  TYPE_5__ video_frame_info_t ;
typedef  float uint32_t ;
struct TYPE_18__ {scalar_t__ vertices; } ;
struct TYPE_19__ {TYPE_3__ coords; } ;
struct TYPE_16__ {scalar_t__ vertices; } ;
struct TYPE_17__ {TYPE_1__ coords; } ;
struct TYPE_15__ {TYPE_4__ carr; } ;
struct TYPE_14__ {TYPE_2__ carr; } ;

/* Variables and functions */
 float FUNC0 (int,float) ; 
 int /*<<< orphan*/  TEXT_ALIGN_CENTER ; 
 int /*<<< orphan*/  font_bold ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_12__ font_raster_bold ; 
 TYPE_11__ font_raster_regular ; 
 int /*<<< orphan*/  font_regular ; 
 int /*<<< orphan*/  load_content_animation_content_name ; 
 float load_content_animation_fade_alpha ; 
 float load_content_animation_final_fade_alpha ; 
 int /*<<< orphan*/  load_content_animation_icon ; 
 int /*<<< orphan*/  load_content_animation_icon_alpha ; 
 float* load_content_animation_icon_color ; 
 scalar_t__ load_content_animation_icon_size ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,float,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,float) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int,int,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,float*) ; 

__attribute__((used)) static void FUNC8(video_frame_info_t *video_info)
{
   /* TODO: scale this right ? (change metrics) */

   int icon_size        = (int) load_content_animation_icon_size;
   uint32_t text_alpha  = load_content_animation_fade_alpha * 255.0f;
   uint32_t text_color  = FUNC0(0xB8B8B800, text_alpha);
   unsigned text_offset = -25 * load_content_animation_fade_alpha;
   float *icon_color    = load_content_animation_icon_color;

   /* Fade out */
   FUNC6(video_info, load_content_animation_fade_alpha);

   /* Icon */
   FUNC5(icon_color, load_content_animation_icon_alpha);
   FUNC2(video_info);
   FUNC7(video_info, icon_size,
      icon_size, load_content_animation_icon,
      video_info->width/2 - icon_size/2,
      video_info->height/2 - icon_size/2,
      video_info->width,
      video_info->height,
      0, 1, icon_color
   );
   FUNC3(video_info);

   /* Text */
   FUNC4(font_bold,
      load_content_animation_content_name,
      video_info->width/2,
      video_info->height/2 + 175 + 25 + text_offset,
      video_info->width,
      video_info->height,
      text_color,
      TEXT_ALIGN_CENTER,
      1,
      false,
      0,
      false
   );

   /* Flush text layer */
   FUNC1(video_info->width, video_info->height, font_regular, video_info);
   FUNC1(video_info->width, video_info->height, font_bold, video_info);

   font_raster_regular.carr.coords.vertices = 0;
   font_raster_bold.carr.coords.vertices = 0;

   /* Everything disappears */
   FUNC6(video_info, load_content_animation_final_fade_alpha);
}