
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vout_fbdev {int mem_size; int mem; } ;


 int memset (int ,int ,int ) ;

void vout_fbdev_clear(struct vout_fbdev *fbdev)
{
 memset(fbdev->mem, 0, fbdev->mem_size);
}
