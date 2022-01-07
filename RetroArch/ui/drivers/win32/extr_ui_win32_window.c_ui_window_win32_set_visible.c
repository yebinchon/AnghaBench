
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwnd; } ;
typedef TYPE_1__ ui_window_win32_t ;


 int SW_HIDE ;
 int SW_SHOWNORMAL ;
 int ShowWindow (int ,int ) ;

__attribute__((used)) static void ui_window_win32_set_visible(void *data,
        bool set_visible)
{
   ui_window_win32_t *window = (ui_window_win32_t*)data;
   ShowWindow(window->hwnd, set_visible ? SW_SHOWNORMAL : SW_HIDE);
}
