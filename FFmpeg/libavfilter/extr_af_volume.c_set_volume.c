
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int volume; int* var_values; scalar_t__ eval_mode; size_t precision; int volume_i; int volume_pexpr; } ;
typedef TYPE_1__ VolumeContext ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 scalar_t__ EVAL_MODE_ONCE ;
 size_t PRECISION_FIXED ;
 size_t VAR_N ;
 size_t VAR_PTS ;
 size_t VAR_T ;
 size_t VAR_VOLUME ;
 int av_expr_eval (int ,int*,int *) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 scalar_t__ isnan (int) ;
 double log10 (double) ;
 int * precision_str ;
 int volume_init (TYPE_1__*) ;

__attribute__((used)) static int set_volume(AVFilterContext *ctx)
{
    VolumeContext *vol = ctx->priv;

    vol->volume = av_expr_eval(vol->volume_pexpr, vol->var_values, ((void*)0));
    if (isnan(vol->volume)) {
        if (vol->eval_mode == EVAL_MODE_ONCE) {
            av_log(ctx, AV_LOG_ERROR, "Invalid value NaN for volume\n");
            return AVERROR(EINVAL);
        } else {
            av_log(ctx, AV_LOG_WARNING, "Invalid value NaN for volume, setting to 0\n");
            vol->volume = 0;
        }
    }
    vol->var_values[VAR_VOLUME] = vol->volume;

    av_log(ctx, AV_LOG_VERBOSE, "n:%f t:%f pts:%f precision:%s ",
           vol->var_values[VAR_N], vol->var_values[VAR_T], vol->var_values[VAR_PTS],
           precision_str[vol->precision]);

    if (vol->precision == PRECISION_FIXED) {
        vol->volume_i = (int)(vol->volume * 256 + 0.5);
        vol->volume = vol->volume_i / 256.0;
        av_log(ctx, AV_LOG_VERBOSE, "volume_i:%d/255 ", vol->volume_i);
    }
    av_log(ctx, AV_LOG_VERBOSE, "volume:%f volume_dB:%f\n",
           vol->volume, 20.0*log10(vol->volume));

    volume_init(vol);
    return 0;
}
