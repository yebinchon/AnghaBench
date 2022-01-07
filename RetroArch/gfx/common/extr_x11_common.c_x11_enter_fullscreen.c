
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef int XF86VidModeModeInfo ;
typedef int Display ;


 int DefaultScreen (int *) ;
 int XF86VidModeSetViewPort (int *,int ,int ,int ) ;
 int XF86VidModeSwitchToMode (int *,int ,int *) ;
 int desktop_mode ;
 int get_video_mode (int *,int *,unsigned int,unsigned int,int *,int *) ;

bool x11_enter_fullscreen(video_frame_info_t *video_info,
      Display *dpy, unsigned width,
      unsigned height)
{
   XF86VidModeModeInfo mode;

   if (!get_video_mode(video_info, dpy, width, height, &mode, &desktop_mode))
      return 0;

   if (!XF86VidModeSwitchToMode(dpy, DefaultScreen(dpy), &mode))
      return 0;

   XF86VidModeSetViewPort(dpy, DefaultScreen(dpy), 0, 0);
   return 1;
}
