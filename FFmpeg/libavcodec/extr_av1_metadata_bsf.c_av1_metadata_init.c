
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ extradata; } ;
struct TYPE_17__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_20__ {int cbc; TYPE_3__ access_unit; } ;
struct TYPE_16__ {int sequence_header; } ;
struct TYPE_19__ {TYPE_2__ obu; } ;
struct TYPE_18__ {int par_out; TYPE_9__* par_in; TYPE_6__* priv_data; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_5__* content; } ;
typedef TYPE_3__ CodedBitstreamFragment ;
typedef TYPE_4__ AVBSFContext ;
typedef TYPE_5__ AV1RawOBU ;
typedef TYPE_6__ AV1MetadataContext ;


 scalar_t__ AV1_OBU_SEQUENCE_HEADER ;
 int AV_CODEC_ID_AV1 ;
 int AV_LOG_ERROR ;
 int av1_metadata_update_sequence_header (TYPE_4__*,int *) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_cbs_fragment_reset (int ,TYPE_3__*) ;
 int ff_cbs_init (int *,int ,TYPE_4__*) ;
 int ff_cbs_read_extradata (int ,TYPE_3__*,TYPE_9__*) ;
 int ff_cbs_write_extradata (int ,int ,TYPE_3__*) ;

__attribute__((used)) static int av1_metadata_init(AVBSFContext *bsf)
{
    AV1MetadataContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->access_unit;
    AV1RawOBU *obu;
    int err, i;

    err = ff_cbs_init(&ctx->cbc, AV_CODEC_ID_AV1, bsf);
    if (err < 0)
        return err;

    if (bsf->par_in->extradata) {
        err = ff_cbs_read_extradata(ctx->cbc, frag, bsf->par_in);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to read extradata.\n");
            goto fail;
        }

        for (i = 0; i < frag->nb_units; i++) {
            if (frag->units[i].type == AV1_OBU_SEQUENCE_HEADER) {
                obu = frag->units[i].content;
                err = av1_metadata_update_sequence_header(bsf, &obu->obu.sequence_header);
                if (err < 0)
                    goto fail;
            }
        }

        err = ff_cbs_write_extradata(ctx->cbc, bsf->par_out, frag);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to write extradata.\n");
            goto fail;
        }
    }

    err = 0;
fail:
    ff_cbs_fragment_reset(ctx->cbc, frag);
    return err;
}
