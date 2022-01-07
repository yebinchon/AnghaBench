
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vout_fbdev {int fd; } ;


 int FBIO_WAITFORVSYNC ;
 int ioctl (int ,int ,int*) ;

void vout_fbdev_wait_vsync(struct vout_fbdev *fbdev)
{
 int arg = 0;
 ioctl(fbdev->fd, FBIO_WAITFORVSYNC, &arg);
}
