
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int sliding; int xpos; int xend; scalar_t__ phase; scalar_t__ magnitude; } ;
typedef TYPE_1__ SpectrumSynthContext ;
typedef TYPE_2__ AVFilterContext ;






 int av_assert0 (int ) ;
 int av_frame_free (scalar_t__*) ;
 int try_push_frame (TYPE_2__*,int) ;

__attribute__((used)) static int try_push_frames(AVFilterContext *ctx)
{
    SpectrumSynthContext *s = ctx->priv;
    int ret, x;

    if (!(s->magnitude && s->phase))
        return 0;

    switch (s->sliding) {
    case 130:
        ret = try_push_frame(ctx, s->xpos);
        s->xpos++;
        if (s->xpos >= s->xend)
            s->xpos = 0;
        break;
    case 128:
        s->xpos = s->xend - 1;
        ret = try_push_frame(ctx, s->xpos);
        break;
    case 129:
        s->xpos = 0;
        ret = try_push_frame(ctx, s->xpos);
        break;
    case 131:
        for (x = 0; x < s->xend; x++) {
            ret = try_push_frame(ctx, x);
            if (ret < 0)
                break;
        }
        break;
    default:
        av_assert0(0);
    }

    av_frame_free(&s->magnitude);
    av_frame_free(&s->phase);
    return ret;
}
