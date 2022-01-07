
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ w; scalar_t__ h; scalar_t__ c; int data; } ;
typedef TYPE_1__ image ;


 int composite_image (TYPE_1__,TYPE_1__,int,int ) ;
 TYPE_1__ copy_image (TYPE_1__) ;
 int embed_image (TYPE_1__,TYPE_1__,int ,int ) ;
 int fill_cpu (int,int,int ,int) ;
 TYPE_1__ make_image (scalar_t__,scalar_t__,scalar_t__) ;

image tile_images(image a, image b, int dx)
{
    if(a.w == 0) return copy_image(b);
    image c = make_image(a.w + b.w + dx, (a.h > b.h) ? a.h : b.h, (a.c > b.c) ? a.c : b.c);
    fill_cpu(c.w*c.h*c.c, 1, c.data, 1);
    embed_image(a, c, 0, 0);
    composite_image(b, c, a.w + dx, 0);
    return c;
}
