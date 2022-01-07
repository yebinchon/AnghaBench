
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* linesize; scalar_t__* data; } ;
struct TYPE_5__ {int hsub; int vsub; int depth; int const* yuv_color; } ;
typedef TYPE_1__ SignalstatsContext ;
typedef TYPE_2__ AVFrame ;


 int AV_WN16 (scalar_t__,int const) ;

__attribute__((used)) static void burn_frame16(const SignalstatsContext *s, AVFrame *f, int x, int y)
{
    const int chromax = x >> s->hsub;
    const int chromay = y >> s->vsub;
    const int mult = 1 << (s->depth - 8);
    AV_WN16(f->data[0] + y * f->linesize[0] + x * 2, s->yuv_color[0] * mult);
    AV_WN16(f->data[1] + chromay * f->linesize[1] + chromax * 2, s->yuv_color[1] * mult);
    AV_WN16(f->data[2] + chromay * f->linesize[2] + chromax * 2, s->yuv_color[2] * mult);
}
