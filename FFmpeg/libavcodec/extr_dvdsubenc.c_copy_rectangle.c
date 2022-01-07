
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int x; int y; int* linesize; int h; int w; int ** data; } ;
typedef TYPE_1__ AVSubtitleRect ;



__attribute__((used)) static void copy_rectangle(AVSubtitleRect *dst, AVSubtitleRect *src, int cmap[])
{
    int x, y;
    uint8_t *p, *q;

    p = src->data[0];
    q = dst->data[0] + (src->x - dst->x) +
                            (src->y - dst->y) * dst->linesize[0];
    for (y = 0; y < src->h; y++) {
        for (x = 0; x < src->w; x++)
            *(q++) = cmap[*(p++)];
        p += src->linesize[0] - src->w;
        q += dst->linesize[0] - src->w;
    }
}
