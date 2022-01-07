
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ in_evdev_t ;


 int close (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void in_evdev_free(void *drv_data)
{
 in_evdev_t *dev = drv_data;
 if (dev == ((void*)0))
  return;
 close(dev->fd);
 free(dev);
}
