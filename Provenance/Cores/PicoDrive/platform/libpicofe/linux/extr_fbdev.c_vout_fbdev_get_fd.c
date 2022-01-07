
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vout_fbdev {int fd; } ;



int vout_fbdev_get_fd(struct vout_fbdev *fbdev)
{
 return fbdev->fd;
}
