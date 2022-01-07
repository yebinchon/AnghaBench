
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int* linesize; scalar_t__* data; } ;
struct TYPE_7__ {int nb_planes; int* fill; int depth; int* planeheight; int* planewidth; TYPE_1__* borders; } ;
struct TYPE_6__ {int top; int bottom; int left; int right; } ;
typedef TYPE_2__ FillBordersContext ;
typedef TYPE_3__ AVFrame ;



__attribute__((used)) static void fixed_borders16(FillBordersContext *s, AVFrame *frame)
{
    int p, y, x;

    for (p = 0; p < s->nb_planes; p++) {
        uint16_t *ptr = (uint16_t *)frame->data[p];
        uint16_t fill = s->fill[p] << (s->depth - 8);
        int linesize = frame->linesize[p] / 2;

        for (y = s->borders[p].top; y < s->planeheight[p] - s->borders[p].bottom; y++) {
            for (x = 0; x < s->borders[p].left; x++) {
                ptr[y * linesize + x] = fill;
            }

            for (x = 0; x < s->borders[p].right; x++) {
                ptr[y * linesize + s->planewidth[p] - s->borders[p].right + x] = fill;
            }
        }

        for (y = 0; y < s->borders[p].top; y++) {
            for (x = 0; x < s->planewidth[p]; x++) {
                ptr[y * linesize + x] = fill;
            }
        }

        for (y = s->planeheight[p] - s->borders[p].bottom; y < s->planeheight[p]; y++) {
            for (x = 0; x < s->planewidth[p]; x++) {
                ptr[y * linesize + x] = fill;
            }
        }
    }
}
