
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int width; int height; int** data; int* linesize; } ;
struct TYPE_7__ {float r; float g; float b; } ;
struct TYPE_8__ {TYPE_1__ rgb; } ;
typedef TYPE_2__ ColorFloat ;
typedef TYPE_3__ AVFrame ;


 void* lrintf (float) ;

__attribute__((used)) static void draw_axis_rgb(AVFrame *out, AVFrame *axis, const ColorFloat *c, int off)
{
    int x, y, w = axis->width, h = axis->height;
    float a, rcp_255 = 1.0f / 255.0f;
    uint8_t *lp, *lpa;

    for (y = 0; y < h; y++) {
        lp = out->data[0] + (off + y) * out->linesize[0];
        lpa = axis->data[0] + y * axis->linesize[0];
        for (x = 0; x < w; x++) {
            if (!lpa[3]) {
                *lp++ = lrintf(c[x].rgb.r);
                *lp++ = lrintf(c[x].rgb.g);
                *lp++ = lrintf(c[x].rgb.b);
            } else if (lpa[3] == 255) {
                *lp++ = lpa[0];
                *lp++ = lpa[1];
                *lp++ = lpa[2];
            } else {
                a = rcp_255 * lpa[3];
                *lp++ = lrintf(a * lpa[0] + (1.0f - a) * c[x].rgb.r);
                *lp++ = lrintf(a * lpa[1] + (1.0f - a) * c[x].rgb.g);
                *lp++ = lrintf(a * lpa[2] + (1.0f - a) * c[x].rgb.b);
            }
            lpa += 4;
        }
    }
}
