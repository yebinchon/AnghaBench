
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ extradata; } ;
struct TYPE_16__ {int par_out; TYPE_9__* par_in; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_14__ {int cbc; TYPE_3__ access_unit; } ;
struct TYPE_13__ {scalar_t__ type; int content; } ;
typedef TYPE_2__ H264MetadataContext ;
typedef TYPE_3__ CodedBitstreamFragment ;
typedef TYPE_4__ AVBSFContext ;


 int AV_CODEC_ID_H264 ;
 int AV_LOG_ERROR ;
 scalar_t__ H264_NAL_SPS ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_cbs_fragment_reset (int ,TYPE_3__*) ;
 int ff_cbs_init (int *,int ,TYPE_4__*) ;
 int ff_cbs_read_extradata (int ,TYPE_3__*,TYPE_9__*) ;
 int ff_cbs_write_extradata (int ,int ,TYPE_3__*) ;
 int h264_metadata_update_sps (TYPE_4__*,int ) ;

__attribute__((used)) static int h264_metadata_init(AVBSFContext *bsf)
{
    H264MetadataContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *au = &ctx->access_unit;
    int err, i;

    err = ff_cbs_init(&ctx->cbc, AV_CODEC_ID_H264, bsf);
    if (err < 0)
        return err;

    if (bsf->par_in->extradata) {
        err = ff_cbs_read_extradata(ctx->cbc, au, bsf->par_in);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to read extradata.\n");
            goto fail;
        }

        for (i = 0; i < au->nb_units; i++) {
            if (au->units[i].type == H264_NAL_SPS) {
                err = h264_metadata_update_sps(bsf, au->units[i].content);
                if (err < 0)
                    goto fail;
            }
        }

        err = ff_cbs_write_extradata(ctx->cbc, bsf->par_out, au);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to write extradata.\n");
            goto fail;
        }
    }

    err = 0;
fail:
    ff_cbs_fragment_reset(ctx->cbc, au);
    return err;
}
