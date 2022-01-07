
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct fb_var_screeninfo {unsigned int xres; unsigned int yres; float pixclock; float upper_margin; float lower_margin; float vsync_len; float left_margin; float right_margin; float hsync_len; } ;
struct TYPE_4__ {unsigned int width; unsigned int height; } ;
struct TYPE_3__ {unsigned int width; unsigned int height; float refresh_rate; TYPE_2__ native_window; int egl; } ;
typedef TYPE_1__ mali_ctx_data_t ;
typedef int EGLint ;




 int FBIOGET_VSCREENINFO ;
 int O_RDWR ;
 int RARCH_ERR (char*,...) ;
 int close (int) ;
 int eglGetError () ;
 int egl_create_context (int *,int const*) ;
 int egl_create_surface (int *,TYPE_2__*) ;
 int egl_report_error () ;
 int gfx_ctx_mali_fbdev_destroy (void*) ;
 scalar_t__ ioctl (int,int ,struct fb_var_screeninfo*) ;
 int open (char*,int ) ;

__attribute__((used)) static bool gfx_ctx_mali_fbdev_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   struct fb_var_screeninfo vinfo;
   static const EGLint attribs[] = {
      129, 2,
      128
   };
   mali_ctx_data_t *mali = (mali_ctx_data_t*)data;
   int fd = open("/dev/fb0", O_RDWR);

   if (ioctl(fd, FBIOGET_VSCREENINFO, &vinfo) < 0)
   {
      RARCH_ERR("Error obtaining framebuffer info.\n");
      goto error;
   }

   close(fd);
   fd = -1;

   width = vinfo.xres;
   height = vinfo.yres;

   mali->width = width;
   mali->height = height;

   mali->native_window.width = vinfo.xres;
   mali->native_window.height = vinfo.yres;

   mali->refresh_rate = 1000000.0f / vinfo.pixclock * 1000000.0f /
         (vinfo.yres + vinfo.upper_margin + vinfo.lower_margin + vinfo.vsync_len) /
         (vinfo.xres + vinfo.left_margin + vinfo.right_margin + vinfo.hsync_len);
   return 1;

error:
   if (fd >= 0)
      close(fd);
   RARCH_ERR("[Mali fbdev]: EGL error: %d.\n", eglGetError());
   gfx_ctx_mali_fbdev_destroy(data);
   return 0;
}
