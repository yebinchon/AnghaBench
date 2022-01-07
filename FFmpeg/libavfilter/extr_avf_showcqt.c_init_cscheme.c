
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* cscheme_v; int ctx; int cscheme; } ;
typedef TYPE_1__ ShowCQTContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int ,int ,char*) ;
 scalar_t__ isnan (float) ;
 int sscanf (int ,char*,float*,float*,float*,float*,float*,float*,char*) ;

__attribute__((used)) static int init_cscheme(ShowCQTContext *s)
{
    char tail[2];
    int k;

    if (sscanf(s->cscheme, " %f | %f | %f | %f | %f | %f %1s", &s->cscheme_v[0],
        &s->cscheme_v[1], &s->cscheme_v[2], &s->cscheme_v[3], &s->cscheme_v[4],
        &s->cscheme_v[5], tail) != 6)
        goto fail;

    for (k = 0; k < 6; k++)
        if (isnan(s->cscheme_v[k]) || s->cscheme_v[k] < 0.0f || s->cscheme_v[k] > 1.0f)
            goto fail;

    return 0;

fail:
    av_log(s->ctx, AV_LOG_ERROR, "invalid cscheme.\n");
    return AVERROR(EINVAL);
}
