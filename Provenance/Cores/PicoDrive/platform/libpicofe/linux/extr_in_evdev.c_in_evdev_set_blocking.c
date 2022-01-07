
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct input_event {int dummy; } ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ in_evdev_t ;
typedef int ev ;


 int F_GETFL ;
 int F_SETFL ;
 long O_NONBLOCK ;
 int fcntl (int ,int ,...) ;
 int perror (char*) ;
 int read (int ,struct input_event*,int) ;

__attribute__((used)) static int in_evdev_set_blocking(in_evdev_t *dev, int y)
{
 long flags;
 int ret;

 flags = (long)fcntl(dev->fd, F_GETFL);
 if ((int)flags == -1) {
  perror("in_evdev: F_GETFL fcntl failed");
  return -1;
 }

 if (flags & O_NONBLOCK) {

  struct input_event ev;
  do {
   ret = read(dev->fd, &ev, sizeof(ev));
  }
  while (ret == sizeof(ev));
 }

 if (y)
  flags &= ~O_NONBLOCK;
 else
  flags |= O_NONBLOCK;
 ret = fcntl(dev->fd, F_SETFL, flags);
 if (ret == -1) {
  perror("in_evdev: F_SETFL fcntl failed");
  return -1;
 }

 return 0;
}
