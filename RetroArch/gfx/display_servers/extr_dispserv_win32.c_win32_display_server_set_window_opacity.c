
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int opacity; } ;
typedef TYPE_1__ dispserv_win32_t ;
typedef int HWND ;


 int GWL_EXSTYLE ;
 int GetWindowLongPtr (int ,int ) ;
 int LWA_ALPHA ;
 int SetLayeredWindowAttributes (int ,int ,int,int ) ;
 int SetWindowLongPtr (int ,int ,int) ;
 int WS_EX_LAYERED ;
 int win32_get_window () ;

__attribute__((used)) static bool win32_display_server_set_window_opacity(void *data, unsigned opacity)
{
   HWND hwnd = win32_get_window();
   dispserv_win32_t *serv = (dispserv_win32_t*)data;

   if (serv)
      serv->opacity = opacity;
   return 0;

}
