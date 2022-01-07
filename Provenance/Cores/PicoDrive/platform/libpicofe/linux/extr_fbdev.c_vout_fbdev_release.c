
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vout_fbdev {int * mem; int mem_size; int fbvar_old; int fd; } ;


 int FBIOPUT_VSCREENINFO ;
 int * MAP_FAILED ;
 int ioctl (int ,int ,int *) ;
 int munmap (int *,int ) ;

__attribute__((used)) static void vout_fbdev_release(struct vout_fbdev *fbdev)
{
 ioctl(fbdev->fd, FBIOPUT_VSCREENINFO, &fbdev->fbvar_old);
 if (fbdev->mem != MAP_FAILED)
  munmap(fbdev->mem, fbdev->mem_size);
 fbdev->mem = ((void*)0);
}
