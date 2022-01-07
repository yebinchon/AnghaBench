
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int width; int* linesize; int ** data; } ;
struct TYPE_6__ {float r; float g; float b; } ;
struct TYPE_7__ {TYPE_1__ rgb; } ;
typedef TYPE_2__ ColorFloat ;
typedef TYPE_3__ AVFrame ;


 void* lrintf (float) ;

__attribute__((used)) static void draw_bar_rgb(AVFrame *out, const float *h, const float *rcp_h,
                         const ColorFloat *c, int bar_h, float bar_t)
{
    int x, y, w = out->width;
    float mul, ht, rcp_bar_h = 1.0f / bar_h, rcp_bar_t = 1.0f / bar_t;
    uint8_t *v = out->data[0], *lp;
    int ls = out->linesize[0];

    for (y = 0; y < bar_h; y++) {
        ht = (bar_h - y) * rcp_bar_h;
        lp = v + y * ls;
        for (x = 0; x < w; x++) {
            if (h[x] <= ht) {
                *lp++ = 0;
                *lp++ = 0;
                *lp++ = 0;
            } else {
                mul = (h[x] - ht) * rcp_h[x];
                mul = (mul < bar_t) ? (mul * rcp_bar_t) : 1.0f;
                *lp++ = lrintf(mul * c[x].rgb.r);
                *lp++ = lrintf(mul * c[x].rgb.g);
                *lp++ = lrintf(mul * c[x].rgb.b);
            }
        }
    }
}
