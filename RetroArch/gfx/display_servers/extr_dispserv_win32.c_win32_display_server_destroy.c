
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dispserv_win32_t ;


 int ITaskbarList3_Release (int *) ;
 int crt_center ;
 int free (int *) ;
 int * g_taskbarList ;
 int video_display_server_set_resolution (scalar_t__,scalar_t__,scalar_t__,float,int ,int ,int ) ;
 scalar_t__ win32_orig_height ;
 scalar_t__ win32_orig_refresh ;
 scalar_t__ win32_orig_width ;

__attribute__((used)) static void win32_display_server_destroy(void *data)
{
   dispserv_win32_t *dispserv = (dispserv_win32_t*)data;

   if (win32_orig_width > 0 && win32_orig_height > 0)
      video_display_server_set_resolution(win32_orig_width, win32_orig_height,
            win32_orig_refresh, (float)win32_orig_refresh, crt_center, 0, 0);
   if (dispserv)
      free(dispserv);
}
