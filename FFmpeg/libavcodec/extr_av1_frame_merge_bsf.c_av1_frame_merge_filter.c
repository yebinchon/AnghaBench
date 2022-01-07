
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_25__ {size_t idx; TYPE_2__* frag; int cbc; TYPE_3__* pkt; TYPE_3__* in; } ;
struct TYPE_24__ {TYPE_5__* priv_data; } ;
struct TYPE_23__ {scalar_t__ pts; int data; } ;
struct TYPE_22__ {scalar_t__ nb_units; TYPE_1__* units; } ;
struct TYPE_21__ {scalar_t__ type; int content_ref; int content; } ;
typedef TYPE_2__ CodedBitstreamFragment ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVBSFContext ;
typedef TYPE_5__ AV1FMergeContext ;


 scalar_t__ AV1_OBU_TEMPORAL_DELIMITER ;
 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_NOPTS_VALUE ;
 int EAGAIN ;
 int av1_frame_merge_flush (TYPE_4__*) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_packet_move_ref (TYPE_3__*,TYPE_3__*) ;
 int av_packet_unref (TYPE_3__*) ;
 int ff_bsf_get_packet_ref (TYPE_4__*,TYPE_3__*) ;
 int ff_cbs_fragment_reset (int ,TYPE_2__*) ;
 int ff_cbs_insert_unit_content (int ,TYPE_2__*,int,scalar_t__,int ,int ) ;
 int ff_cbs_read_packet (int ,TYPE_2__*,TYPE_3__*) ;
 int ff_cbs_write_packet (int ,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int av1_frame_merge_filter(AVBSFContext *bsf, AVPacket *out)
{
    AV1FMergeContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->frag[ctx->idx], *tu = &ctx->frag[!ctx->idx];
    AVPacket *in = ctx->in, *buffer_pkt = ctx->pkt;
    int err, i;

    err = ff_bsf_get_packet_ref(bsf, in);
    if (err < 0) {
        if (err == AVERROR_EOF && tu->nb_units > 0)
            goto eof;
        return err;
    }

    err = ff_cbs_read_packet(ctx->cbc, frag, in);
    if (err < 0) {
        av_log(bsf, AV_LOG_ERROR, "Failed to read packet.\n");
        goto fail;
    }

    if (frag->nb_units == 0) {
        av_log(bsf, AV_LOG_ERROR, "No OBU in packet.\n");
        err = AVERROR_INVALIDDATA;
        goto fail;
    }

    if (tu->nb_units == 0 && frag->units[0].type != AV1_OBU_TEMPORAL_DELIMITER) {
        av_log(bsf, AV_LOG_ERROR, "Missing Temporal Delimiter.\n");
        err = AVERROR_INVALIDDATA;
        goto fail;
    }

    for (i = 1; i < frag->nb_units; i++) {
        if (frag->units[i].type == AV1_OBU_TEMPORAL_DELIMITER) {
            av_log(bsf, AV_LOG_ERROR, "Temporal Delimiter in the middle of a packet.\n");
            err = AVERROR_INVALIDDATA;
            goto fail;
        }
    }

    if (tu->nb_units > 0 && frag->units[0].type == AV1_OBU_TEMPORAL_DELIMITER) {
eof:
        err = ff_cbs_write_packet(ctx->cbc, buffer_pkt, tu);
        if (err < 0) {
            av_log(bsf, AV_LOG_ERROR, "Failed to write packet.\n");
            goto fail;
        }
        av_packet_move_ref(out, buffer_pkt);


        ctx->idx = !ctx->idx;
    } else {
        for (i = 0; i < frag->nb_units; i++) {
            err = ff_cbs_insert_unit_content(ctx->cbc, tu, -1, frag->units[i].type,
                                             frag->units[i].content, frag->units[i].content_ref);
            if (err < 0)
                goto fail;
        }

        err = AVERROR(EAGAIN);
    }


    if (!buffer_pkt->data && in->pts != AV_NOPTS_VALUE)
        av_packet_move_ref(buffer_pkt, in);
    else
        av_packet_unref(in);

    ff_cbs_fragment_reset(ctx->cbc, &ctx->frag[ctx->idx]);

fail:
    if (err < 0 && err != AVERROR(EAGAIN))
        av1_frame_merge_flush(bsf);

    return err;
}
