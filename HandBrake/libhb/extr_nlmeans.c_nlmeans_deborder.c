
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int w; int border; int * mem; } ;
typedef TYPE_1__ BorderedPlane ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void nlmeans_deborder(const BorderedPlane *src,
                             uint8_t *dst,
                             const int w,
                             const int s,
                             const int h)
{
    const int bw = src->w + 2 * src->border;
    uint8_t *image = src->mem + src->border + bw * src->border;

    int width = w;
    if (src->w < width)
    {
        width = src->w;
    }


    for (int y = 0; y < h; y++)
    {
        memcpy(dst + y * s, image + y * bw, width);
    }

}
