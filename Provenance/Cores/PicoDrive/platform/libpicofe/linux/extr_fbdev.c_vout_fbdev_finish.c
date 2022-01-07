
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vout_fbdev {int fd; } ;


 int close (int) ;
 int free (struct vout_fbdev*) ;
 int vout_fbdev_release (struct vout_fbdev*) ;

void vout_fbdev_finish(struct vout_fbdev *fbdev)
{
 vout_fbdev_release(fbdev);
 if (fbdev->fd >= 0)
  close(fbdev->fd);
 fbdev->fd = -1;
 free(fbdev);
}
