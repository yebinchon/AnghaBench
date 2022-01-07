
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_seat {int dummy; } ;


 int RARCH_LOG (char*,char const*) ;

__attribute__((used)) static void seat_handle_name(void *data,
      struct wl_seat *seat, const char *name)
{
   (void)data;
   (void)seat;
   RARCH_LOG("[Wayland]: Seat name: %s.\n", name);
}
