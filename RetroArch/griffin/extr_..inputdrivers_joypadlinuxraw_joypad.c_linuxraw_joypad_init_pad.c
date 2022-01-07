
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linuxraw_joypad {char const* fd; char* ident; } ;
struct TYPE_2__ {struct linuxraw_joypad* ptr; } ;
struct epoll_event {TYPE_1__ data; int events; } ;
typedef int input_device_names ;


 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int JSIOCGNAME (int) ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int RARCH_ERR (char*,char const*,...) ;
 int RARCH_LOG (char*,char*,char const*) ;
 int R_OK ;
 scalar_t__ access (char const*,int ) ;
 scalar_t__ epoll_ctl (int ,int ,char const*,struct epoll_event*) ;
 int errno ;
 scalar_t__ ioctl (char const*,int ,char*) ;
 int linuxraw_epoll ;
 char const* open (char const*,int) ;
 int strerror (int ) ;

__attribute__((used)) static bool linuxraw_joypad_init_pad(const char *path,
      struct linuxraw_joypad *pad)
{


   if (access(path, R_OK) < 0)
      return 0;
   if (pad->fd >= 0)
      return 0;

   pad->fd = open(path, O_RDONLY | O_NONBLOCK);
   *pad->ident = '\0';

   if (pad->fd >= 0)
   {
      struct epoll_event event;

      if (ioctl(pad->fd,
               JSIOCGNAME(sizeof(input_device_names[0])), pad->ident) >= 0)
      {
         RARCH_LOG("[Device]: Found pad: %s on %s.\n", pad->ident, path);
      }
      else
         RARCH_ERR("[Device]: Didn't find ident of %s.\n", path);

      event.events = EPOLLIN;
      event.data.ptr = pad;

      if (epoll_ctl(linuxraw_epoll, EPOLL_CTL_ADD, pad->fd, &event) < 0)
      {
         RARCH_ERR("Failed to add FD (%d) to epoll list (%s).\n",
               pad->fd, strerror(errno));
      }
      else
         return 1;
   }

   RARCH_ERR("[Device]: Failed to open pad %s (error: %s).\n",
         path, strerror(errno));
   return 0;
}
