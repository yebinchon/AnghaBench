#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ userdata; } ;
typedef  TYPE_1__ video_frame_info_t ;
struct TYPE_7__ {float a; float r; float g; float b; } ;
typedef  TYPE_2__ menu_display_ctx_clearcolor_t ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__ d3d8_video_t ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3D_COMM_CLEAR_TARGET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
      menu_display_ctx_clearcolor_t *clearcolor, video_frame_info_t *video_info)
{
   DWORD    clear_color  = 0;
   d3d8_video_t     *d3d = (d3d8_video_t*)video_info->userdata;

   if (!d3d || !clearcolor)
      return;

   clear_color = FUNC1(
         FUNC0(clearcolor->a * 255.0f), /* A */
         FUNC0(clearcolor->r * 255.0f), /* R */
         FUNC0(clearcolor->g * 255.0f), /* G */
         FUNC0(clearcolor->b * 255.0f)  /* B */
         );

   FUNC2(d3d->dev, 0, NULL, D3D_COMM_CLEAR_TARGET, clear_color, 0, 0);
}