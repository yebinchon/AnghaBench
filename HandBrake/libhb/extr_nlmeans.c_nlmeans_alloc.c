
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int w; int h; int border; scalar_t__ prefiltered; int * image; int * image_pre; int * mem; int * mem_pre; } ;
typedef TYPE_1__ BorderedPlane ;


 int * malloc (int const) ;
 int memcpy (int *,int const*,int const) ;
 int nlmeans_border (int *,int,int,int) ;

__attribute__((used)) static void nlmeans_alloc(const uint8_t *src,
                          const int src_w,
                          const int src_s,
                          const int src_h,
                          BorderedPlane *dst,
                          const int border)
{
    const int bw = src_w + 2 * border;
    const int bh = src_h + 2 * border;

    uint8_t *mem = malloc(bw * bh * sizeof(uint8_t));
    uint8_t *image = mem + border + bw * border;


    for (int y = 0; y < src_h; y++)
    {
        memcpy(image + y * bw, src + y * src_s, src_w);
    }

    dst->mem = mem;
    dst->image = image;
    dst->w = src_w;
    dst->h = src_h;
    dst->border = border;

    nlmeans_border(dst->mem, dst->w, dst->h, dst->border);
    dst->mem_pre = dst->mem;
    dst->image_pre = dst->image;
    dst->prefiltered = 0;

}
