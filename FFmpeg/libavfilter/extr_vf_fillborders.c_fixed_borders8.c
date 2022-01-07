
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int* linesize; int ** data; } ;
struct TYPE_7__ {int nb_planes; int* planeheight; int * planewidth; TYPE_1__* borders; int * fill; } ;
struct TYPE_6__ {int top; int bottom; int * right; int left; } ;
typedef TYPE_2__ FillBordersContext ;
typedef TYPE_3__ AVFrame ;


 int memset (int,int ,int ) ;

__attribute__((used)) static void fixed_borders8(FillBordersContext *s, AVFrame *frame)
{
    int p, y;

    for (p = 0; p < s->nb_planes; p++) {
        uint8_t *ptr = frame->data[p];
        uint8_t fill = s->fill[p];
        int linesize = frame->linesize[p];

        for (y = s->borders[p].top; y < s->planeheight[p] - s->borders[p].bottom; y++) {
            memset(ptr + y * linesize, fill, s->borders[p].left);
            memset(ptr + y * linesize + s->planewidth[p] - s->borders[p].right, fill,
                   s->borders[p].right);
        }

        for (y = 0; y < s->borders[p].top; y++) {
            memset(ptr + y * linesize, fill, s->planewidth[p]);
        }

        for (y = s->planeheight[p] - s->borders[p].bottom; y < s->planeheight[p]; y++) {
            memset(ptr + y * linesize, fill, s->planewidth[p]);
        }
    }
}
