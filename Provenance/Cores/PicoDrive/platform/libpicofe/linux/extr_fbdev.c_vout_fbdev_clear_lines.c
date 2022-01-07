
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xres_virtual; int bits_per_pixel; int yres; } ;
struct vout_fbdev {int top_border; int buffer_count; int fb_size; scalar_t__ mem; TYPE_1__ fbvar_new; } ;


 int memset (char*,int ,int) ;

void vout_fbdev_clear_lines(struct vout_fbdev *fbdev, int y, int count)
{
 int stride = fbdev->fbvar_new.xres_virtual * fbdev->fbvar_new.bits_per_pixel / 8;
 int i;

 if (y + count > fbdev->top_border + fbdev->fbvar_new.yres)
  count = fbdev->top_border + fbdev->fbvar_new.yres - y;

 if (y >= 0 && count > 0)
  for (i = 0; i < fbdev->buffer_count; i++)
   memset((char *)fbdev->mem + fbdev->fb_size * i + y * stride, 0, stride * count);
}
