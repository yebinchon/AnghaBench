#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct fb_var_screeninfo {unsigned int xres; unsigned int yres; float pixclock; float upper_margin; float lower_margin; float vsync_len; float left_margin; float right_margin; float hsync_len; } ;
struct TYPE_4__ {unsigned int width; unsigned int height; } ;
struct TYPE_3__ {unsigned int width; unsigned int height; float refresh_rate; TYPE_2__ native_window; int /*<<< orphan*/  egl; } ;
typedef  TYPE_1__ mali_ctx_data_t ;
typedef  int EGLint ;

/* Variables and functions */
#define  EGL_CONTEXT_CLIENT_VERSION 129 
#define  EGL_NONE 128 
 int /*<<< orphan*/  FBIOGET_VSCREENINFO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,struct fb_var_screeninfo*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   struct fb_var_screeninfo vinfo;
   static const EGLint attribs[] = {
      EGL_CONTEXT_CLIENT_VERSION, 2, /* Use version 2, even for GLES3. */
      EGL_NONE
   };
   mali_ctx_data_t *mali = (mali_ctx_data_t*)data;
   int fd                = FUNC8("/dev/fb0", O_RDWR);

   if (FUNC7(fd, FBIOGET_VSCREENINFO, &vinfo) < 0)
   {
      FUNC0("Error obtaining framebuffer info.\n");
      goto error;
   }

   FUNC1(fd);
   fd = -1;

   width                      = vinfo.xres;
   height                     = vinfo.yres;

   mali->width                = width;
   mali->height               = height;

   mali->native_window.width  = vinfo.xres;
   mali->native_window.height = vinfo.yres;

   mali->refresh_rate = 1000000.0f / vinfo.pixclock * 1000000.0f /
         (vinfo.yres + vinfo.upper_margin + vinfo.lower_margin + vinfo.vsync_len) /
         (vinfo.xres + vinfo.left_margin  + vinfo.right_margin + vinfo.hsync_len);

#ifdef HAVE_EGL
   if (!egl_create_context(&mali->egl, attribs))
   {
      egl_report_error();
      goto error;
   }
#endif

#ifdef HAVE_EGL
   if (!egl_create_surface(&mali->egl, &mali->native_window))
      goto error;
#endif

   return true;

error:
   if (fd >= 0)
      FUNC1(fd);
   FUNC0("[Mali fbdev]: EGL error: %d.\n", FUNC2());
   FUNC6(data);
   return false;
}