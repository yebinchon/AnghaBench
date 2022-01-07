
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* linesize; int ** data; } ;
struct TYPE_5__ {int hsub; int vsub; int * yuv_color; } ;
typedef TYPE_1__ SignalstatsContext ;
typedef TYPE_2__ AVFrame ;



__attribute__((used)) static void burn_frame8(const SignalstatsContext *s, AVFrame *f, int x, int y)
{
    const int chromax = x >> s->hsub;
    const int chromay = y >> s->vsub;
    f->data[0][y * f->linesize[0] + x] = s->yuv_color[0];
    f->data[1][chromay * f->linesize[1] + chromax] = s->yuv_color[1];
    f->data[2][chromay * f->linesize[2] + chromax] = s->yuv_color[2];
}
