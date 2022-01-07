
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int progress; } ;
typedef TYPE_1__ dispserv_win32_t ;
typedef int HWND ;


 scalar_t__ ITaskbarList3_SetProgressState (int ,int ,int ) ;
 scalar_t__ ITaskbarList3_SetProgressValue (int ,int ,int,int) ;
 scalar_t__ S_OK ;
 int TBPF_INDETERMINATE ;
 int TBPF_NOPROGRESS ;
 int TBPF_NORMAL ;
 int g_taskbarList ;
 int win32_get_window () ;
 int win32_taskbar_is_created () ;

__attribute__((used)) static bool win32_display_server_set_window_progress(void *data, int progress, bool finished)
{
   HWND hwnd = win32_get_window();
   dispserv_win32_t *serv = (dispserv_win32_t*)data;

   if (serv)
      serv->progress = progress;
   return 1;
}
