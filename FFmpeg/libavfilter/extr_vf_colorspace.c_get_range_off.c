
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int did_warn_range; } ;
typedef TYPE_1__ ColorSpaceContext ;
typedef TYPE_2__ AVFilterContext ;





 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int av_log (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int get_range_off(AVFilterContext *ctx, int *off,
                         int *y_rng, int *uv_rng,
                         enum AVColorRange rng, int depth)
{
    switch (rng) {
    case 128: {
        ColorSpaceContext *s = ctx->priv;

        if (!s->did_warn_range) {
            av_log(ctx, AV_LOG_WARNING, "Input range not set, assuming tv/mpeg\n");
            s->did_warn_range = 1;
        }
    }

    case 129:
        *off = 16 << (depth - 8);
        *y_rng = 219 << (depth - 8);
        *uv_rng = 224 << (depth - 8);
        break;
    case 130:
        *off = 0;
        *y_rng = *uv_rng = (256 << (depth - 8)) - 1;
        break;
    default:
        return AVERROR(EINVAL);
    }

    return 0;
}
