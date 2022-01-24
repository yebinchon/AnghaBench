#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {int /*<<< orphan*/  index; } ;
struct TYPE_9__ {scalar_t__ frame_nr; scalar_t__ frame_size; scalar_t__ buf; scalar_t__ timestamp; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ DIRAC_DATA_UNIT_HEADER_SIZE ; 
 int /*<<< orphan*/  DIRAC_PCODE_PICTURE_HQ ; 
 scalar_t__ DIRAC_PIC_NR_SIZE ; 
 int /*<<< orphan*/  EAGAIN ; 
 int RTP_FLAG_MARKER ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (scalar_t__*) ; 
 int FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC8 (TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *ctx, PayloadContext *pl_ctx, AVStream *st,
                                       AVPacket *pkt, uint32_t *timestamp, const uint8_t *buf, int len,
                                       int flags)
{
    int res;
    uint32_t pic_nr;
    uint16_t frag_len;
    uint16_t no_slices;

    /* sanity check for size of input packet: 16 bytes header in any case as minimum */
    if (len < 16) {
        FUNC4(ctx, AV_LOG_ERROR, "Too short RTP/VC2hq packet, got %d bytes\n", len);
        return AVERROR_INVALIDDATA;
    }

    pic_nr = FUNC2(&buf[4]);
    frag_len = FUNC1(&buf[12]);
    no_slices = FUNC1(&buf[14]);

    if (pl_ctx->buf && pl_ctx->frame_nr != pic_nr) {
        FUNC4(ctx, AV_LOG_WARNING, "Dropping buffered RTP/VC2hq packet fragments - non-continuous picture numbers\n");
        FUNC9(&pl_ctx->buf);
    }

    /* transform parameters? */
    if (no_slices == 0) {
        if (len < frag_len + 16) {
            FUNC4(ctx, AV_LOG_ERROR, "Too short RTP/VC2hq packet, got %d bytes\n", len);
            return AVERROR_INVALIDDATA;
        }

        /* start frame buffering with new dynamic buffer */
        if (!pl_ctx->buf) {

            res = FUNC5(&pl_ctx->buf);
            if (res < 0)
                return res;

            /* reserve memory for frame header */
            res = FUNC6(pl_ctx->buf, DIRAC_DATA_UNIT_HEADER_SIZE + DIRAC_PIC_NR_SIZE, SEEK_SET);
            if (res < 0)
                return res;

            pl_ctx->frame_nr = pic_nr;
            pl_ctx->timestamp = *timestamp;
            pl_ctx->frame_size = DIRAC_DATA_UNIT_HEADER_SIZE + DIRAC_PIC_NR_SIZE;
        }

        FUNC7(pl_ctx->buf, buf + 16 /* skip pl header */, frag_len);
        pl_ctx->frame_size += frag_len;

        return FUNC0(EAGAIN);
    } else {
        if (len < frag_len + 20) {
            FUNC4(ctx, AV_LOG_ERROR, "Too short RTP/VC2hq packet, got %d bytes\n", len);
            return AVERROR_INVALIDDATA;
        }

        /* transform parameters were missed, no buffer available */
        if (!pl_ctx->buf)
            return AVERROR_INVALIDDATA;

        FUNC7(pl_ctx->buf, buf + 20 /* skip pl header */, frag_len);
        pl_ctx->frame_size += frag_len;

        /* RTP marker bit means: last fragment of current frame was received;
           otherwise, an additional fragment is needed for the current frame */
        if (!(flags & RTP_FLAG_MARKER))
            return FUNC0(EAGAIN);
    }

    /* close frame buffering and create A/V packet */
    res = FUNC8(pkt, &pl_ctx->buf, st->index);
    if (res < 0)
        return res;

    FUNC10(pl_ctx, pkt->data, DIRAC_PCODE_PICTURE_HQ, pl_ctx->frame_size);
    FUNC3(&pkt->data[13], pl_ctx->frame_nr);

    pl_ctx->frame_size = 0;

    return 0;
}