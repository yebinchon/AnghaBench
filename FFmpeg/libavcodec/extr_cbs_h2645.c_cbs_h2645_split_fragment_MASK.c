#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_12__ {int /*<<< orphan*/  log_ctx; TYPE_2__* priv_data; TYPE_1__* codec; } ;
struct TYPE_11__ {scalar_t__ nb_units; size_t data_size; scalar_t__* data; } ;
struct TYPE_10__ {int mp4; int nal_length_size; int /*<<< orphan*/  read_packet; } ;
struct TYPE_9__ {int codec_id; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ CodedBitstreamH2645Context ;
typedef  TYPE_3__ CodedBitstreamFragment ;
typedef  TYPE_4__ CodedBitstreamContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AV_CODEC_ID_H264 ; 
 int AV_CODEC_ID_HEVC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__*,size_t,int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC10(CodedBitstreamContext *ctx,
                                    CodedBitstreamFragment *frag,
                                    int header)
{
    enum AVCodecID codec_id = ctx->codec->codec_id;
    CodedBitstreamH2645Context *priv = ctx->priv_data;
    GetByteContext gbc;
    int err;

    FUNC0(frag->data && frag->nb_units == 0);
    if (frag->data_size == 0)
        return 0;

    if (header && frag->data[0] && codec_id == AV_CODEC_ID_H264) {
        // AVCC header.
        size_t size, start, end;
        int i, count, version;

        priv->mp4 = 1;

        FUNC5(&gbc, frag->data, frag->data_size);

        if (FUNC4(&gbc) < 6)
            return AVERROR_INVALIDDATA;

        version = FUNC3(&gbc);
        if (version != 1) {
            FUNC1(ctx->log_ctx, AV_LOG_ERROR, "Invalid AVCC header: "
                   "first byte %u.", version);
            return AVERROR_INVALIDDATA;
        }

        FUNC6(&gbc, 3);
        priv->nal_length_size = (FUNC3(&gbc) & 3) + 1;

        // SPS array.
        count = FUNC3(&gbc) & 0x1f;
        start = FUNC7(&gbc);
        for (i = 0; i < count; i++) {
            if (FUNC4(&gbc) < 2 * (count - i))
                return AVERROR_INVALIDDATA;
            size = FUNC2(&gbc);
            if (FUNC4(&gbc) < size)
                return AVERROR_INVALIDDATA;
            FUNC6(&gbc, size);
        }
        end = FUNC7(&gbc);

        err = FUNC9(&priv->read_packet,
                                    frag->data + start, end - start,
                                    ctx->log_ctx, 1, 2, AV_CODEC_ID_H264, 1, 1);
        if (err < 0) {
            FUNC1(ctx->log_ctx, AV_LOG_ERROR, "Failed to split AVCC SPS array.\n");
            return err;
        }
        err = FUNC8(ctx, frag, &priv->read_packet);
        if (err < 0)
            return err;

        // PPS array.
        count = FUNC3(&gbc);
        start = FUNC7(&gbc);
        for (i = 0; i < count; i++) {
            if (FUNC4(&gbc) < 2 * (count - i))
                return AVERROR_INVALIDDATA;
            size = FUNC2(&gbc);
            if (FUNC4(&gbc) < size)
                return AVERROR_INVALIDDATA;
            FUNC6(&gbc, size);
        }
        end = FUNC7(&gbc);

        err = FUNC9(&priv->read_packet,
                                    frag->data + start, end - start,
                                    ctx->log_ctx, 1, 2, AV_CODEC_ID_H264, 1, 1);
        if (err < 0) {
            FUNC1(ctx->log_ctx, AV_LOG_ERROR, "Failed to split AVCC PPS array.\n");
            return err;
        }
        err = FUNC8(ctx, frag, &priv->read_packet);
        if (err < 0)
            return err;

        if (FUNC4(&gbc) > 0) {
            FUNC1(ctx->log_ctx, AV_LOG_WARNING, "%u bytes left at end of AVCC "
                   "header.\n", FUNC4(&gbc));
        }

    } else if (header && frag->data[0] && codec_id == AV_CODEC_ID_HEVC) {
        // HVCC header.
        size_t size, start, end;
        int i, j, nb_arrays, nal_unit_type, nb_nals, version;

        priv->mp4 = 1;

        FUNC5(&gbc, frag->data, frag->data_size);

        if (FUNC4(&gbc) < 23)
            return AVERROR_INVALIDDATA;

        version = FUNC3(&gbc);
        if (version != 1) {
            FUNC1(ctx->log_ctx, AV_LOG_ERROR, "Invalid HVCC header: "
                   "first byte %u.", version);
            return AVERROR_INVALIDDATA;
        }

        FUNC6(&gbc, 20);
        priv->nal_length_size = (FUNC3(&gbc) & 3) + 1;

        nb_arrays = FUNC3(&gbc);
        for (i = 0; i < nb_arrays; i++) {
            nal_unit_type = FUNC3(&gbc) & 0x3f;
            nb_nals = FUNC2(&gbc);

            start = FUNC7(&gbc);
            for (j = 0; j < nb_nals; j++) {
                if (FUNC4(&gbc) < 2)
                    return AVERROR_INVALIDDATA;
                size = FUNC2(&gbc);
                if (FUNC4(&gbc) < size)
                    return AVERROR_INVALIDDATA;
                FUNC6(&gbc, size);
            }
            end = FUNC7(&gbc);

            err = FUNC9(&priv->read_packet,
                                        frag->data + start, end - start,
                                        ctx->log_ctx, 1, 2, AV_CODEC_ID_HEVC, 1, 1);
            if (err < 0) {
                FUNC1(ctx->log_ctx, AV_LOG_ERROR, "Failed to split "
                       "HVCC array %d (%d NAL units of type %d).\n",
                       i, nb_nals, nal_unit_type);
                return err;
            }
            err = FUNC8(ctx, frag, &priv->read_packet);
            if (err < 0)
                return err;
        }

    } else {
        // Annex B, or later MP4 with already-known parameters.

        err = FUNC9(&priv->read_packet,
                                    frag->data, frag->data_size,
                                    ctx->log_ctx,
                                    priv->mp4, priv->nal_length_size,
                                    codec_id, 1, 1);
        if (err < 0)
            return err;

        err = FUNC8(ctx, frag, &priv->read_packet);
        if (err < 0)
            return err;
    }

    return 0;
}