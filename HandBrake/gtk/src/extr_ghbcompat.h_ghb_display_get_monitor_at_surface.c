
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbSurface ;
typedef int GdkMonitor ;
typedef int GdkDisplay ;


 int * gdk_display_get_monitor_at_window (int *,int *) ;

__attribute__((used)) static inline GdkMonitor *
ghb_display_get_monitor_at_surface(GdkDisplay * display, GhbSurface * surface)
{
    return gdk_display_get_monitor_at_window(display, surface);
}
