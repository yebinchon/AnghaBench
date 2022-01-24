#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ video_smooth; } ;
struct TYPE_8__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_9__ {scalar_t__ menu_texture_enable; scalar_t__ rgb32; } ;
typedef  TYPE_3__ gx_video_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; int /*<<< orphan*/  obj; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  obj; } ;
typedef  int /*<<< orphan*/  GXTexObj ;

/* Variables and functions */
 int /*<<< orphan*/  GX_CLAMP ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int GX_LINEAR ; 
 unsigned int GX_NEAR ; 
 int /*<<< orphan*/  GX_TF_RGB565 ; 
 int /*<<< orphan*/  GX_TF_RGB5A3 ; 
 int /*<<< orphan*/  GX_TF_RGBA8 ; 
 TYPE_2__* FUNC3 () ; 
 TYPE_5__ g_tex ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,unsigned int*,size_t*) ; 
 TYPE_4__ menu_tex ; 

__attribute__((used)) static void FUNC5(void *data, unsigned width, unsigned height)
{
   size_t fb_pitch;
   unsigned fb_width, fb_height;
   gx_video_t *gx       = (gx_video_t*)data;
   GXTexObj *fb_ptr   	= (GXTexObj*)&g_tex.obj;
   GXTexObj *menu_ptr 	= (GXTexObj*)&menu_tex.obj;
   settings_t *settings = FUNC3();
   unsigned g_filter    = settings->bools.video_smooth ? GX_LINEAR : GX_NEAR;

   width               &= ~3;
   height              &= ~3;

   FUNC4(&fb_width, &fb_height,
         &fb_pitch);

   FUNC0(fb_ptr, g_tex.data, width, height,
         (gx->rgb32) ? GX_TF_RGBA8 : gx->menu_texture_enable ?
         GX_TF_RGB5A3 : GX_TF_RGB565,
         GX_CLAMP, GX_CLAMP, GX_FALSE);
   FUNC1(fb_ptr, g_filter, g_filter);
   FUNC0(menu_ptr, menu_tex.data, fb_width, fb_height,
         GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, GX_FALSE);
   FUNC1(menu_ptr, g_filter, g_filter);
   FUNC2();
}