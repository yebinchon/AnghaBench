
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int num_devices; int fd; TYPE_4__** devices; } ;
typedef TYPE_3__ udev_input_t ;
struct TYPE_8__ {int x_min; int x_max; int y_min; int y_max; } ;
struct TYPE_11__ {int fd; int type; TYPE_1__ mouse; int devnode; int handle_cb; scalar_t__ dev; } ;
typedef TYPE_4__ udev_input_device_t ;
struct stat {scalar_t__ st_dev; } ;
struct TYPE_9__ {TYPE_4__* ptr; } ;
struct kevent {TYPE_2__ data; int events; } ;
struct input_absinfo {int minimum; int maximum; } ;
struct epoll_event {int dummy; } ;
typedef enum udev_input_dev_type { ____Placeholder_udev_input_dev_type } udev_input_dev_type ;
typedef int device_handle_cb ;


 int ABS_X ;
 int ABS_Y ;
 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int EVFILT_READ ;
 int EVIOCGABS (int ) ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int ) ;
 int LISTENSOCKET ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int RARCH_ERR (char*,int,int ) ;
 int UDEV_INPUT_MOUSE ;
 int UDEV_INPUT_TOUCHPAD ;
 scalar_t__ calloc (int,int) ;
 int close (int) ;
 scalar_t__ epoll_ctl (int ,int ,int,struct kevent*) ;
 int errno ;
 int free (TYPE_4__*) ;
 scalar_t__ ioctl (int,int ,struct input_absinfo*) ;
 int kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int open (char const*,int) ;
 scalar_t__ realloc (TYPE_4__**,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static bool udev_input_add_device(udev_input_t *udev,
      enum udev_input_dev_type type, const char *devnode, device_handle_cb cb)
{
   int fd;
   struct stat st;





   struct input_absinfo absinfo;
   udev_input_device_t **tmp;
   udev_input_device_t *device = ((void*)0);

   st.st_dev = 0;

   if (stat(devnode, &st) < 0)
      return 0;

   fd = open(devnode, O_RDONLY | O_NONBLOCK);
   if (fd < 0)
      return 0;

   device = (udev_input_device_t*)calloc(1, sizeof(*device));
   if (!device)
      goto error;

   device->fd = fd;
   device->dev = st.st_dev;
   device->handle_cb = cb;
   device->type = type;

   strlcpy(device->devnode, devnode, sizeof(device->devnode));


   if (type == UDEV_INPUT_MOUSE || type == UDEV_INPUT_TOUCHPAD )
   {
      if (ioctl(fd, EVIOCGABS(ABS_X), &absinfo) >= 0)
      {
         if (absinfo.minimum >= absinfo.maximum )
        {
            device->mouse.x_min = -1;
            device->mouse.x_max = -1;
         }
         else
         {
            device->mouse.x_min = absinfo.minimum;
            device->mouse.x_max = absinfo.maximum;
         }
      }

      if (ioctl(fd, EVIOCGABS(ABS_Y), &absinfo) >= 0)
      {
         if (absinfo.minimum >= absinfo.maximum )
         {
            device->mouse.y_min = -1;
            device->mouse.y_max = -1;
         }
      else
         {
           device->mouse.y_min = absinfo.minimum;
           device->mouse.y_max = absinfo.maximum;
         }
      }
   }

   tmp = ( udev_input_device_t**)realloc(udev->devices,
         (udev->num_devices + 1) * sizeof(*udev->devices));

   if (!tmp)
      goto error;

   tmp[udev->num_devices++] = device;
   udev->devices = tmp;
   return 1;

error:
   close(fd);
   if (device)
      free(device);

   return 0;
}
