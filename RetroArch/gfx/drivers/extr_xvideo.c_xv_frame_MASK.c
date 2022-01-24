#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  full_height; int /*<<< orphan*/  full_width; } ;
struct TYPE_8__ {TYPE_5__ vp; int /*<<< orphan*/  image; int /*<<< orphan*/  gc; int /*<<< orphan*/  port; int /*<<< orphan*/  keep_aspect; int /*<<< orphan*/  (* render_func ) (TYPE_1__*,void const*,unsigned int,unsigned int,unsigned int) ;} ;
typedef  TYPE_1__ xv_t ;
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ XWindowAttributes ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_x11_dpy ; 
 int /*<<< orphan*/  g_x11_win ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void const*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,unsigned int,unsigned int) ; 

__attribute__((used)) static bool FUNC9(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   XWindowAttributes target;
   xv_t *xv                  = (xv_t*)data;

   if (!frame)
      return true;

   if (!FUNC7(xv, width, height))
      return false;

   FUNC0(g_x11_dpy, g_x11_win, &target);
   xv->render_func(xv, frame, width, height, pitch);

   FUNC6(xv->keep_aspect, &xv->vp, target.width, target.height);
   xv->vp.full_width  = target.width;
   xv->vp.full_height = target.height;

#ifdef HAVE_MENU
   menu_driver_frame(video_info);
#endif

   if (msg)
      FUNC8(xv, msg, width << 1, height << 1);

   FUNC2(g_x11_dpy, xv->port, g_x11_win, xv->gc, xv->image,
         0, 0, width << 1, height << 1,
         xv->vp.x, xv->vp.y, xv->vp.width, xv->vp.height,
         true);
   FUNC1(g_x11_dpy, False);

   FUNC5(NULL, video_info);

   return true;
}