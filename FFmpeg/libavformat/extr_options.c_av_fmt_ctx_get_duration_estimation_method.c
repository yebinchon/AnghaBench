
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVDurationEstimationMethod { ____Placeholder_AVDurationEstimationMethod } AVDurationEstimationMethod ;
struct TYPE_3__ {int duration_estimation_method; } ;
typedef TYPE_1__ AVFormatContext ;



enum AVDurationEstimationMethod av_fmt_ctx_get_duration_estimation_method(const AVFormatContext* ctx)
{
    return ctx->duration_estimation_method;
}
