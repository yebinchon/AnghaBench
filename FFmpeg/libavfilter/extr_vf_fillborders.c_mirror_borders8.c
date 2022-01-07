
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int* linesize; int ** data; } ;
struct TYPE_7__ {int nb_planes; int* planeheight; int* planewidth; TYPE_1__* borders; } ;
struct TYPE_6__ {int top; int bottom; int left; int right; } ;
typedef TYPE_2__ FillBordersContext ;
typedef TYPE_3__ AVFrame ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void mirror_borders8(FillBordersContext *s, AVFrame *frame)
{
    int p, y, x;

    for (p = 0; p < s->nb_planes; p++) {
        uint8_t *ptr = frame->data[p];
        int linesize = frame->linesize[p];

        for (y = s->borders[p].top; y < s->planeheight[p] - s->borders[p].bottom; y++) {
            for (x = 0; x < s->borders[p].left; x++) {
                ptr[y * linesize + x] = ptr[y * linesize + s->borders[p].left * 2 - 1 - x];
            }

            for (x = 0; x < s->borders[p].right; x++) {
                ptr[y * linesize + s->planewidth[p] - s->borders[p].right + x] =
                    ptr[y * linesize + s->planewidth[p] - s->borders[p].right - 1 - x];
            }
        }

        for (y = 0; y < s->borders[p].top; y++) {
            memcpy(ptr + y * linesize,
                   ptr + (s->borders[p].top * 2 - 1 - y) * linesize,
                   s->planewidth[p]);
        }

        for (y = 0; y < s->borders[p].bottom; y++) {
            memcpy(ptr + (s->planeheight[p] - s->borders[p].bottom + y) * linesize,
                   ptr + (s->planeheight[p] - s->borders[p].bottom - 1 - y) * linesize,
                   s->planewidth[p]);
        }
    }
}
