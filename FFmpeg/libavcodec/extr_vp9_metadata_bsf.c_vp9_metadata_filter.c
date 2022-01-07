
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int profile_high_bit; int profile_low_bit; scalar_t__ frame_type; scalar_t__ color_space; int color_range; scalar_t__ intra_only; } ;
typedef TYPE_2__ VP9RawFrameHeader ;
struct TYPE_15__ {TYPE_2__ header; } ;
typedef TYPE_3__ VP9RawFrame ;
struct TYPE_17__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_16__ {scalar_t__ color_space; int color_warnings; scalar_t__ color_range; int cbc; TYPE_5__ fragment; } ;
typedef TYPE_4__ VP9MetadataContext ;
struct TYPE_18__ {TYPE_4__* priv_data; } ;
struct TYPE_13__ {TYPE_3__* content; } ;
typedef TYPE_5__ CodedBitstreamFragment ;
typedef int AVPacket ;
typedef TYPE_6__ AVBSFContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ VP9_CS_BT_601 ;
 scalar_t__ VP9_CS_RGB ;
 scalar_t__ VP9_KEY_FRAME ;
 int av_log (TYPE_6__*,int ,char*) ;
 int av_packet_unref (int *) ;
 int ff_bsf_get_packet_ref (TYPE_6__*,int *) ;
 int ff_cbs_fragment_reset (int ,TYPE_5__*) ;
 int ff_cbs_read_packet (int ,TYPE_5__*,int *) ;
 int ff_cbs_write_packet (int ,int *,TYPE_5__*) ;

__attribute__((used)) static int vp9_metadata_filter(AVBSFContext *bsf, AVPacket *pkt)
{
    VP9MetadataContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->fragment;
    int err, i;

    err = ff_bsf_get_packet_ref(bsf, pkt);
    if (err < 0)
        return err;

    err = ff_cbs_read_packet(ctx->cbc, frag, pkt);
    if (err < 0) {
        av_log(bsf, AV_LOG_ERROR, "Failed to read packet.\n");
        goto fail;
    }

    for (i = 0; i < frag->nb_units; i++) {
        VP9RawFrame *frame = frag->units[i].content;
        VP9RawFrameHeader *header = &frame->header;
        int profile = (header->profile_high_bit << 1) + header->profile_low_bit;

        if (header->frame_type == VP9_KEY_FRAME ||
            header->intra_only && profile > 0) {
            if (ctx->color_space >= 0) {
                if (!(profile & 1) && ctx->color_space == VP9_CS_RGB) {
                    if (!(ctx->color_warnings & 2)) {
                        av_log(bsf, AV_LOG_WARNING, "Warning: RGB "
                               "incompatible with profiles 0 and 2.\n");
                        ctx->color_warnings |= 2;
                    }
                } else
                    header->color_space = ctx->color_space;
            }

            if (ctx->color_range >= 0)
                header->color_range = ctx->color_range;
            if (header->color_space == VP9_CS_RGB) {
                if (!(ctx->color_warnings & 1) && !header->color_range) {
                    av_log(bsf, AV_LOG_WARNING, "Warning: Color space RGB "
                           "implicitly sets color range to PC range.\n");
                    ctx->color_warnings |= 1;
                }
                header->color_range = 1;
            }
        } else if (!(ctx->color_warnings & 4) && header->intra_only && !profile &&
                   ctx->color_space >= 0 && ctx->color_space != VP9_CS_BT_601) {
            av_log(bsf, AV_LOG_WARNING, "Warning: Intra-only frames in "
                   "profile 0 are automatically BT.601.\n");
            ctx->color_warnings |= 4;
        }
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
