
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_absinfo {int value; } ;
struct TYPE_2__ {int* abs_adj; int* abs_mult; int fd; } ;
typedef TYPE_1__ in_evdev_t ;


 int EVIOCGABS (int) ;
 unsigned int MAX_ABS_DEVS ;
 int ioctl (int ,int ,struct input_absinfo*) ;

__attribute__((used)) static int in_evdev_update_analog(void *drv_data, int axis_id, int *result)
{
 struct input_absinfo ainfo;
 in_evdev_t *dev = drv_data;
 int ret;

 if ((unsigned int)axis_id >= MAX_ABS_DEVS)
  return -1;

 ret = ioctl(dev->fd, EVIOCGABS(axis_id), &ainfo);
 if (ret != 0)
  return ret;

 *result = (ainfo.value + dev->abs_adj[axis_id]) * dev->abs_mult[axis_id];
 *result >>= 16;
 return 0;
}
