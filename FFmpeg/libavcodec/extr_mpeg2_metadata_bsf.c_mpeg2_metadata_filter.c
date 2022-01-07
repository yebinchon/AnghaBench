
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int cbc; int fragment; } ;
typedef TYPE_1__ MPEG2MetadataContext ;
typedef int CodedBitstreamFragment ;
typedef int AVPacket ;
typedef TYPE_2__ AVBSFContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_packet_unref (int *) ;
 int ff_bsf_get_packet_ref (TYPE_2__*,int *) ;
 int ff_cbs_fragment_reset (int ,int *) ;
 int ff_cbs_read_packet (int ,int *,int *) ;
 int ff_cbs_write_packet (int ,int *,int *) ;
 int mpeg2_metadata_update_fragment (TYPE_2__*,int *) ;

__attribute__((used)) static int mpeg2_metadata_filter(AVBSFContext *bsf, AVPacket *pkt)
{
    MPEG2MetadataContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->fragment;
    int err;

    err = ff_bsf_get_packet_ref(bsf, pkt);
    if (err < 0)
        return err;

    err = ff_cbs_read_packet(ctx->cbc, frag, pkt);
    if (err < 0) {
        av_log(bsf, AV_LOG_ERROR, "Failed to read packet.\n");
        goto fail;
    }

    err = mpeg2_metadata_update_fragment(bsf, frag);
    if (err < 0) {
        av_log(bsf, AV_LOG_ERROR, "Failed to update frame fragment.\n");
        goto fail;
    }

    err = ff_cbs_write_packet(ctx->cbc, pkt, frag);
    if (err < 0) {
        av_log(bsf, AV_LOG_ERROR, "Failed to write packet.\n");
        goto fail;
    }

    err = 0;
fail:
    ff_cbs_fragment_reset(ctx->cbc, frag);

    if (err < 0)
        av_packet_unref(pkt);

    return err;
}
