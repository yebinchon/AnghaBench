
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int height; int width; int y; int x; int full_height; int full_width; } ;
struct TYPE_8__ {TYPE_5__ vp; int image; int gc; int port; int keep_aspect; int (* render_func ) (TYPE_1__*,void const*,unsigned int,unsigned int,unsigned int) ;} ;
typedef TYPE_1__ xv_t ;
typedef int video_frame_info_t ;
typedef int uint64_t ;
struct TYPE_9__ {int height; int width; } ;
typedef TYPE_2__ XWindowAttributes ;


 int False ;
 int XGetWindowAttributes (int ,int ,TYPE_2__*) ;
 int XSync (int ,int ) ;
 int XvShmPutImage (int ,int ,int ,int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,int ,int ,int) ;
 int g_x11_dpy ;
 int g_x11_win ;
 int menu_driver_frame (int *) ;
 int stub1 (TYPE_1__*,void const*,unsigned int,unsigned int,unsigned int) ;
 int x11_update_title (int *,int *) ;
 int xv_calc_out_rect (int ,TYPE_5__*,int ,int ) ;
 int xv_check_resize (TYPE_1__*,unsigned int,unsigned int) ;
 int xv_render_msg (TYPE_1__*,char const*,unsigned int,unsigned int) ;

__attribute__((used)) static bool xv_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   XWindowAttributes target;
   xv_t *xv = (xv_t*)data;

   if (!frame)
      return 1;

   if (!xv_check_resize(xv, width, height))
      return 0;

   XGetWindowAttributes(g_x11_dpy, g_x11_win, &target);
   xv->render_func(xv, frame, width, height, pitch);

   xv_calc_out_rect(xv->keep_aspect, &xv->vp, target.width, target.height);
   xv->vp.full_width = target.width;
   xv->vp.full_height = target.height;





   if (msg)
      xv_render_msg(xv, msg, width << 1, height << 1);

   XvShmPutImage(g_x11_dpy, xv->port, g_x11_win, xv->gc, xv->image,
         0, 0, width << 1, height << 1,
         xv->vp.x, xv->vp.y, xv->vp.width, xv->vp.height,
         1);
   XSync(g_x11_dpy, False);

   x11_update_title(((void*)0), video_info);

   return 1;
}
