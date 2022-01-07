
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int height; int width; int* linesize; int ** data; } ;
struct TYPE_6__ {int* co; } ;
typedef TYPE_1__ ColorkeyContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int do_colorkey_pixel (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int do_colorkey_slice(AVFilterContext *avctx, void *arg, int jobnr, int nb_jobs)
{
    AVFrame *frame = arg;

    const int slice_start = (frame->height * jobnr) / nb_jobs;
    const int slice_end = (frame->height * (jobnr + 1)) / nb_jobs;

    ColorkeyContext *ctx = avctx->priv;

    int o, x, y;

    for (y = slice_start; y < slice_end; ++y) {
        for (x = 0; x < frame->width; ++x) {
            o = frame->linesize[0] * y + x * 4;

            frame->data[0][o + ctx->co[3]] =
                do_colorkey_pixel(ctx,
                                  frame->data[0][o + ctx->co[0]],
                                  frame->data[0][o + ctx->co[1]],
                                  frame->data[0][o + ctx->co[2]]);
        }
    }

    return 0;
}
