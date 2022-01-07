
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pollfd {int events; int revents; int fd; int member_0; } ;
struct TYPE_2__ {int dpy; int fd; } ;
typedef TYPE_1__ input_ctx_wayland_data_t ;


 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int close (int ) ;
 int frontend_driver_set_signal_handler_state (int) ;
 scalar_t__ poll (struct pollfd*,int,int ) ;
 int wl_display_dispatch (int ) ;
 int wl_display_dispatch_pending (int ) ;
 int wl_display_flush (int ) ;

void flush_wayland_fd(void *data)
{
   struct pollfd fd = {0};
   input_ctx_wayland_data_t *wl = (input_ctx_wayland_data_t*)data;

   wl_display_dispatch_pending(wl->dpy);
   wl_display_flush(wl->dpy);

   fd.fd = wl->fd;
   fd.events = POLLIN | POLLOUT | POLLERR | POLLHUP;

   if (poll(&fd, 1, 0) > 0)
   {
      if (fd.revents & (POLLERR | POLLHUP))
      {
         close(wl->fd);
         frontend_driver_set_signal_handler_state(1);
      }

      if (fd.revents & POLLIN)
         wl_display_dispatch(wl->dpy);
      if (fd.revents & POLLOUT)
         wl_display_flush(wl->dpy);
   }
}
