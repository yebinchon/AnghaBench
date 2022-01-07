
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ refresh_rate; scalar_t__ black_frame_insertion; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_9__ {unsigned int hdisplay; unsigned int vdisplay; float dotclock; float htotal; float vtotal; } ;
typedef TYPE_2__ XF86VidModeModeInfo ;
typedef int Display ;


 int DefaultScreen (int *) ;
 int XF86VidModeGetAllModeLines (int *,int ,int*,TYPE_2__***) ;
 int XFree (TYPE_2__**) ;
 float fabsf (scalar_t__) ;

__attribute__((used)) static bool get_video_mode(video_frame_info_t *video_info,
      Display *dpy, unsigned width, unsigned height,
      XF86VidModeModeInfo *mode, XF86VidModeModeInfo *desktop_mode)
{
   int i, num_modes = 0;
   bool ret = 0;
   float refresh_mod = 0.0f;
   float minimum_fps_diff = 0.0f;
   XF86VidModeModeInfo **modes = ((void*)0);

   XF86VidModeGetAllModeLines(dpy, DefaultScreen(dpy), &num_modes, &modes);

   if (!num_modes)
   {
      XFree(modes);
      return 0;
   }

   *desktop_mode = *modes[0];



   refresh_mod = video_info->black_frame_insertion ? 0.5f : 1.0f;

   for (i = 0; i < num_modes; i++)
   {
      float refresh, diff;
      const XF86VidModeModeInfo *m = modes[i];

      if (!m)
         continue;

      if (m->hdisplay != width)
         continue;
      if (m->vdisplay != height)
         continue;

      refresh = refresh_mod * m->dotclock * 1000.0f / (m->htotal * m->vtotal);
      diff = fabsf(refresh - video_info->refresh_rate);

      if (!ret || diff < minimum_fps_diff)
      {
         *mode = *m;
         minimum_fps_diff = diff;
      }
      ret = 1;
   }

   XFree(modes);
   return ret;
}
