
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_monitor {int dummy; } ;
struct pollfd {int events; int revents; int fd; } ;


 int POLLIN ;
 int poll (struct pollfd*,int,int ) ;
 int udev_monitor_get_fd (struct udev_monitor*) ;

__attribute__((used)) static bool udev_input_poll_hotplug_available(struct udev_monitor *dev)
{
   struct pollfd fds;

   fds.fd = udev_monitor_get_fd(dev);
   fds.events = POLLIN;
   fds.revents = 0;

   return (poll(&fds, 1, 0) == 1) && (fds.revents & POLLIN);
}
