#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {size_t idx; TYPE_2__* frag; int /*<<< orphan*/  cbc; TYPE_3__* pkt; TYPE_3__* in; } ;
struct TYPE_24__ {TYPE_5__* priv_data; } ;
struct TYPE_23__ {scalar_t__ pts; int /*<<< orphan*/  data; } ;
struct TYPE_22__ {scalar_t__ nb_units; TYPE_1__* units; } ;
struct TYPE_21__ {scalar_t__ type; int /*<<< orphan*/  content_ref; int /*<<< orphan*/  content; } ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVBSFContext ;
typedef  TYPE_5__ AV1FMergeContext ;

/* Variables and functions */
 scalar_t__ AV1_OBU_TEMPORAL_DELIMITER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(AVBSFContext *bsf, AVPacket *out)
{
    AV1FMergeContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->frag[ctx->idx], *tu = &ctx->frag[!ctx->idx];
    AVPacket *in = ctx->in, *buffer_pkt = ctx->pkt;
    int err, i;

    err = FUNC5(bsf, in);
    if (err < 0) {
        if (err == AVERROR_EOF && tu->nb_units > 0)
            goto eof;
        return err;
    }

    err = FUNC8(ctx->cbc, frag, in);
    if (err < 0) {
        FUNC2(bsf, AV_LOG_ERROR, "Failed to read packet.\n");
        goto fail;
    }

    if (frag->nb_units == 0) {
        FUNC2(bsf, AV_LOG_ERROR, "No OBU in packet.\n");
        err = AVERROR_INVALIDDATA;
        goto fail;
    }

    if (tu->nb_units == 0 && frag->units[0].type != AV1_OBU_TEMPORAL_DELIMITER) {
        FUNC2(bsf, AV_LOG_ERROR, "Missing Temporal Delimiter.\n");
        err = AVERROR_INVALIDDATA;
        goto fail;
    }

    for (i = 1; i < frag->nb_units; i++) {
        if (frag->units[i].type == AV1_OBU_TEMPORAL_DELIMITER) {
            FUNC2(bsf, AV_LOG_ERROR, "Temporal Delimiter in the middle of a packet.\n");
            err = AVERROR_INVALIDDATA;
            goto fail;
        }
    }

    if (tu->nb_units > 0 && frag->units[0].type == AV1_OBU_TEMPORAL_DELIMITER) {
eof:
        err = FUNC9(ctx->cbc, buffer_pkt, tu);
        if (err < 0) {
            FUNC2(bsf, AV_LOG_ERROR, "Failed to write packet.\n");
            goto fail;
        }
        FUNC3(out, buffer_pkt);

        // Swap fragment index, to avoid copying fragment references.
        ctx->idx = !ctx->idx;
    } else {
        for (i = 0; i < frag->nb_units; i++) {
            err = FUNC7(ctx->cbc, tu, -1, frag->units[i].type,
                                             frag->units[i].content, frag->units[i].content_ref);
            if (err < 0)
                goto fail;
        }

        err = FUNC0(EAGAIN);
    }

    // Buffer packets with timestamps. There should be at most one per TU, be it split or not.
    if (!buffer_pkt->data && in->pts != AV_NOPTS_VALUE)
        FUNC3(buffer_pkt, in);
    else
        FUNC4(in);

    FUNC6(ctx->cbc, &ctx->frag[ctx->idx]);

fail:
    if (err < 0 && err != FUNC0(EAGAIN))
        FUNC1(bsf);

    return err;
}