
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ extradata; int codec_id; } ;
struct TYPE_13__ {scalar_t__ nb_decompose_unit_types; int decompose_unit_types; } ;
struct TYPE_12__ {int par_out; TYPE_6__* par_in; TYPE_1__* priv_data; } ;
struct TYPE_11__ {TYPE_4__* cbc; int fragment; int type_list; int nb_types; scalar_t__ remove_types; int mode; scalar_t__ pass_types; } ;
typedef TYPE_1__ FilterUnitsContext ;
typedef int CodedBitstreamFragment ;
typedef TYPE_2__ AVBSFContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int PASS ;
 int REMOVE ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ff_cbs_fragment_reset (TYPE_4__*,int *) ;
 int ff_cbs_init (TYPE_4__**,int ,TYPE_2__*) ;
 int ff_cbs_read_extradata (TYPE_4__*,int *,TYPE_6__*) ;
 int ff_cbs_write_extradata (TYPE_4__*,int ,int *) ;
 int filter_units_make_type_list (scalar_t__,int *,int *) ;

__attribute__((used)) static int filter_units_init(AVBSFContext *bsf)
{
    FilterUnitsContext *ctx = bsf->priv_data;
    int err;

    if (ctx->pass_types && ctx->remove_types) {
        av_log(bsf, AV_LOG_ERROR, "Exactly one of pass_types or "
               "remove_types is required.\n");
        return AVERROR(EINVAL);
    }

    if (ctx->pass_types) {
        ctx->mode = PASS;
        err = filter_units_make_type_list(ctx->pass_types,
                                          &ctx->type_list, &ctx->nb_types);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to parse pass_types.\n");
            return err;
        }
    } else if (ctx->remove_types) {
        ctx->mode = REMOVE;
        err = filter_units_make_type_list(ctx->remove_types,
                                          &ctx->type_list, &ctx->nb_types);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to parse remove_types.\n");
            return err;
        }
    } else {
        return 0;
    }

    err = ff_cbs_init(&ctx->cbc, bsf->par_in->codec_id, bsf);
    if (err < 0)
        return err;


    ctx->cbc->decompose_unit_types = ctx->type_list;
    ctx->cbc->nb_decompose_unit_types = 0;

    if (bsf->par_in->extradata) {
        CodedBitstreamFragment *frag = &ctx->fragment;

        err = ff_cbs_read_extradata(ctx->cbc, frag, bsf->par_in);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to read extradata.\n");
        } else {
            err = ff_cbs_write_extradata(ctx->cbc, bsf->par_out, frag);
            if (err < 0)
                av_log(bsf, AV_LOG_ERROR, "Failed to write extradata.\n");
        }

        ff_cbs_fragment_reset(ctx->cbc, frag);
    }

    return err;
}
