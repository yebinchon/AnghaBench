
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* priv_data; } ;
struct TYPE_14__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_13__ {scalar_t__ mode; int nb_types; scalar_t__* type_list; int cbc; TYPE_3__ fragment; } ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_2__ FilterUnitsContext ;
typedef TYPE_3__ CodedBitstreamFragment ;
typedef int AVPacket ;
typedef TYPE_4__ AVBSFContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 scalar_t__ NOOP ;
 scalar_t__ REMOVE ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_packet_unref (int *) ;
 int ff_bsf_get_packet_ref (TYPE_4__*,int *) ;
 int ff_cbs_delete_unit (int ,TYPE_3__*,int) ;
 int ff_cbs_fragment_reset (int ,TYPE_3__*) ;
 int ff_cbs_read_packet (int ,TYPE_3__*,int *) ;
 int ff_cbs_write_packet (int ,int *,TYPE_3__*) ;

__attribute__((used)) static int filter_units_filter(AVBSFContext *bsf, AVPacket *pkt)
{
    FilterUnitsContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->fragment;
    int err, i, j;

    err = ff_bsf_get_packet_ref(bsf, pkt);
    if (err < 0)
        return err;

    if (ctx->mode == NOOP)
        return 0;

    err = ff_cbs_read_packet(ctx->cbc, frag, pkt);
    if (err < 0) {
        av_log(bsf, AV_LOG_ERROR, "Failed to read packet.\n");
        goto fail;
    }

    for (i = frag->nb_units - 1; i >= 0; i--) {
        for (j = 0; j < ctx->nb_types; j++) {
            if (frag->units[i].type == ctx->type_list[j])
                break;
        }
        if (ctx->mode == REMOVE ? j < ctx->nb_types
                                : j >= ctx->nb_types)
            ff_cbs_delete_unit(ctx->cbc, frag, i);
    }

    if (frag->nb_units == 0) {

        err = AVERROR(EAGAIN);
        goto fail;
    }

    err = ff_cbs_write_packet(ctx->cbc, pkt, frag);
    if (err < 0) {
        av_log(bsf, AV_LOG_ERROR, "Failed to write packet.\n");
        goto fail;
    }

fail:
    if (err < 0)
        av_packet_unref(pkt);
    ff_cbs_fragment_reset(ctx->cbc, frag);

    return err;
}
