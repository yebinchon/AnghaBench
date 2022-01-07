
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_devices; TYPE_3__** devices; } ;
typedef TYPE_1__ udev_input_t ;
struct TYPE_7__ {int fd; int devnode; } ;


 int close (int ) ;
 int free (TYPE_3__*) ;
 int memmove (TYPE_3__**,TYPE_3__**,unsigned int) ;
 int string_is_equal (char const*,int ) ;

__attribute__((used)) static void udev_input_remove_device(udev_input_t *udev, const char *devnode)
{
   unsigned i;

   for (i = 0; i < udev->num_devices; i++)
   {
      if (!string_is_equal(devnode, udev->devices[i]->devnode))
         continue;

      close(udev->devices[i]->fd);
      free(udev->devices[i]);
      memmove(udev->devices + i, udev->devices + i + 1,
            (udev->num_devices - (i + 1)) * sizeof(*udev->devices));
      udev->num_devices--;
   }
}
