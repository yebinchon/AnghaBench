
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int direct; TYPE_3__* in; TYPE_3__* out; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_10__ {TYPE_2__* priv; } ;
struct TYPE_9__ {int * linesize; int height; int width; int * data; } ;
struct TYPE_8__ {int hsub; int vsub; int * coefs; int * frame_prev; int * line; } ;
typedef TYPE_2__ HQDN3DContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterContext ;


 int AV_CEIL_RSHIFT (int ,int) ;
 size_t CHROMA_SPATIAL ;
 size_t CHROMA_TMP ;
 size_t LUMA_SPATIAL ;
 size_t LUMA_TMP ;
 int denoise (TYPE_2__*,int ,int ,int ,int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int do_denoise(AVFilterContext *ctx, void *data, int job_nr, int n_jobs)
{
    HQDN3DContext *s = ctx->priv;
    const ThreadData *td = data;
    AVFrame *out = td->out;
    AVFrame *in = td->in;
    int direct = td->direct;

    denoise(s, in->data[job_nr], out->data[job_nr],
                s->line[job_nr], &s->frame_prev[job_nr],
                AV_CEIL_RSHIFT(in->width, (!!job_nr * s->hsub)),
                AV_CEIL_RSHIFT(in->height, (!!job_nr * s->vsub)),
                in->linesize[job_nr], out->linesize[job_nr],
                s->coefs[job_nr ? CHROMA_SPATIAL : LUMA_SPATIAL],
                s->coefs[job_nr ? CHROMA_TMP : LUMA_TMP]);

    return 0;
}
