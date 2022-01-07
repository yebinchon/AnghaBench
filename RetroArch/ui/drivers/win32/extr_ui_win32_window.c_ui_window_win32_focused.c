
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwnd; } ;
typedef TYPE_1__ ui_window_win32_t ;


 scalar_t__ GetForegroundWindow () ;

__attribute__((used)) static bool ui_window_win32_focused(void *data)
{
   ui_window_win32_t *window = (ui_window_win32_t*)data;
   return (GetForegroundWindow() == window->hwnd);
}
