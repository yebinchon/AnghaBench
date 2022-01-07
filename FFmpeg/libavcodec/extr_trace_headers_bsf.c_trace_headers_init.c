
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* cbc; int fragment; } ;
typedef TYPE_1__ TraceHeadersContext ;
struct TYPE_13__ {scalar_t__ extradata; int codec_id; } ;
struct TYPE_12__ {int trace_enable; int trace_level; } ;
struct TYPE_11__ {TYPE_5__* par_in; TYPE_1__* priv_data; } ;
typedef int CodedBitstreamFragment ;
typedef TYPE_2__ AVBSFContext ;


 int AV_LOG_INFO ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ff_cbs_fragment_reset (TYPE_4__*,int *) ;
 int ff_cbs_init (TYPE_4__**,int ,TYPE_2__*) ;
 int ff_cbs_read_extradata (TYPE_4__*,int *,TYPE_5__*) ;

__attribute__((used)) static int trace_headers_init(AVBSFContext *bsf)
{
    TraceHeadersContext *ctx = bsf->priv_data;
    int err;

    err = ff_cbs_init(&ctx->cbc, bsf->par_in->codec_id, bsf);
    if (err < 0)
        return err;

    ctx->cbc->trace_enable = 1;
    ctx->cbc->trace_level = AV_LOG_INFO;

    if (bsf->par_in->extradata) {
        CodedBitstreamFragment *frag = &ctx->fragment;

        av_log(bsf, AV_LOG_INFO, "Extradata\n");

        err = ff_cbs_read_extradata(ctx->cbc, frag, bsf->par_in);

        ff_cbs_fragment_reset(ctx->cbc, frag);
    }

    return err;
}
