#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtshd_start_code ;
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int size; char const* data; } ;
struct TYPE_7__ {int dtshd_rate; int pkt_offset; int data_type; int dtshd_skip; int dtshd_fallback; int out_bytes; scalar_t__ hd_buf; scalar_t__ out_buf; int /*<<< orphan*/  hd_buf_size; scalar_t__ length_code; } ;
typedef  TYPE_1__ IEC61937Context ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int BURST_HEADER_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC2 (int,int) ; 
 int IEC61937_DTSHD ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVPacket *pkt, int core_size,
                             int sample_rate, int blocks)
{
    IEC61937Context *ctx = s->priv_data;
    static const char dtshd_start_code[10] = { 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfe, 0xfe };
    int pkt_size = pkt->size;
    int period;
    int subtype;

    if (!core_size) {
        FUNC4(s, AV_LOG_ERROR, "HD mode not supported for this format\n");
        return FUNC0(EINVAL);
    }

    if (!sample_rate) {
        FUNC4(s, AV_LOG_ERROR, "Unknown DTS sample rate for HD\n");
        return AVERROR_INVALIDDATA;
    }

    period = ctx->dtshd_rate * (blocks << 5) / sample_rate;
    subtype = FUNC6(period);

    if (subtype < 0) {
        FUNC4(s, AV_LOG_ERROR, "Specified HD rate of %d Hz would require an "
               "impossible repetition period of %d for the current DTS stream"
               " (blocks = %d, sample rate = %d)\n", ctx->dtshd_rate, period,
               blocks << 5, sample_rate);
        return FUNC0(EINVAL);
    }

    /* set pkt_offset and DTS IV subtype according to the requested output
     * rate */
    ctx->pkt_offset = period * 4;
    ctx->data_type = IEC61937_DTSHD | subtype << 8;

    /* If the bitrate is too high for transmitting at the selected
     * repetition period setting, strip DTS-HD until a good amount
     * of consecutive non-overflowing HD frames have been observed.
     * This generally only happens if the caller is cramming a Master
     * Audio stream into 192kHz IEC 60958 (which may or may not fit). */
    if (sizeof(dtshd_start_code) + 2 + pkt_size
            > ctx->pkt_offset - BURST_HEADER_SIZE && core_size) {
        if (!ctx->dtshd_skip)
            FUNC4(s, AV_LOG_WARNING, "DTS-HD bitrate too high, "
                                      "temporarily sending core only\n");
        if (ctx->dtshd_fallback > 0)
            ctx->dtshd_skip = sample_rate * ctx->dtshd_fallback / (blocks << 5);
        else
            /* skip permanently (dtshd_fallback == -1) or just once
             * (dtshd_fallback == 0) */
            ctx->dtshd_skip = 1;
    }
    if (ctx->dtshd_skip && core_size) {
        pkt_size = core_size;
        if (ctx->dtshd_fallback >= 0)
            --ctx->dtshd_skip;
    }

    ctx->out_bytes   = sizeof(dtshd_start_code) + 2 + pkt_size;

    /* Align so that (length_code & 0xf) == 0x8. This is reportedly needed
     * with some receivers, but the exact requirement is unconfirmed. */
    ctx->length_code = FUNC2(ctx->out_bytes + 0x8, 0x10) - 0x8;

    FUNC3(&ctx->hd_buf, &ctx->hd_buf_size, ctx->out_bytes);
    if (!ctx->hd_buf)
        return FUNC0(ENOMEM);

    ctx->out_buf = ctx->hd_buf;

    FUNC5(ctx->hd_buf, dtshd_start_code, sizeof(dtshd_start_code));
    FUNC1(ctx->hd_buf + sizeof(dtshd_start_code), pkt_size);
    FUNC5(ctx->hd_buf + sizeof(dtshd_start_code) + 2, pkt->data, pkt_size);

    return 0;
}