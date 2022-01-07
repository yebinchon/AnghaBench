
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int time_base_out; int par_out; TYPE_1__* filter; int time_base_in; int par_in; } ;
struct TYPE_9__ {int nb_bitstream_filters; TYPE_2__* st; TYPE_4__** bsf_ctx; } ;
struct TYPE_8__ {int time_base; int codecpar; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_3__ OutputStream ;
typedef TYPE_4__ AVBSFContext ;


 int AV_LOG_ERROR ;
 int av_bsf_init (TYPE_4__*) ;
 int av_log (int *,int ,char*,int ) ;
 int avcodec_parameters_copy (int ,int ) ;

__attribute__((used)) static int init_output_bsfs(OutputStream *ost)
{
    AVBSFContext *ctx;
    int i, ret;

    if (!ost->nb_bitstream_filters)
        return 0;

    for (i = 0; i < ost->nb_bitstream_filters; i++) {
        ctx = ost->bsf_ctx[i];

        ret = avcodec_parameters_copy(ctx->par_in,
                                      i ? ost->bsf_ctx[i - 1]->par_out : ost->st->codecpar);
        if (ret < 0)
            return ret;

        ctx->time_base_in = i ? ost->bsf_ctx[i - 1]->time_base_out : ost->st->time_base;

        ret = av_bsf_init(ctx);
        if (ret < 0) {
            av_log(((void*)0), AV_LOG_ERROR, "Error initializing bitstream filter: %s\n",
                   ost->bsf_ctx[i]->filter->name);
            return ret;
        }
    }

    ctx = ost->bsf_ctx[ost->nb_bitstream_filters - 1];
    ret = avcodec_parameters_copy(ost->st->codecpar, ctx->par_out);
    if (ret < 0)
        return ret;

    ost->st->time_base = ctx->time_base_out;

    return 0;
}
