
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef int title ;


 int PropModeReplace ;
 int XA_STRING ;
 int XA_WM_NAME ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char const*,int ) ;
 int g_x11_dpy ;
 int g_x11_win ;
 int strlen (char*) ;
 int video_driver_get_window_title (char*,int) ;

void x11_update_title(void *data, void *data2)
{
   video_frame_info_t *video_info = (video_frame_info_t*)data2;
   char title[128];

   title[0] = '\0';

   video_driver_get_window_title(title, sizeof(title));

   if (title[0])
      XChangeProperty(g_x11_dpy, g_x11_win, XA_WM_NAME, XA_STRING,
            8, PropModeReplace, (const unsigned char*)title,
            strlen(title));
}
