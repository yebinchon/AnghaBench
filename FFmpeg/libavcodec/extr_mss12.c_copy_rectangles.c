
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rgb_stride; int pal_stride; scalar_t__ last_pal_pic; scalar_t__ pal_pic; scalar_t__ last_rgb_pic; scalar_t__ rgb_pic; } ;
typedef TYPE_1__ MSS12Context ;


 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void copy_rectangles(MSS12Context const *c,
                            int x, int y, int width, int height)
{
    int j;

    if (c->last_rgb_pic)
        for (j = y; j < y + height; j++) {
            memcpy(c->rgb_pic + j * c->rgb_stride + x * 3,
                   c->last_rgb_pic + j * c->rgb_stride + x * 3,
                   width * 3);
            memcpy(c->pal_pic + j * c->pal_stride + x,
                   c->last_pal_pic + j * c->pal_stride + x,
                   width);
        }
}
