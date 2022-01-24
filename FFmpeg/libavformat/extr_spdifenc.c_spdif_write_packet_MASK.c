#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct AVFormatContext {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int* data; int size; } ;
struct TYPE_6__ {int* out_buf; int out_bytes; int length_code; int use_preamble; int extra_bswap; int (* header_info ) (struct AVFormatContext*,TYPE_2__*) ;int pkt_offset; int data_type; int spdif_flags; int* buffer; int /*<<< orphan*/  buffer_size; } ;
typedef  TYPE_1__ IEC61937Context ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int BURST_HEADER_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int SPDIF_FLAG_BIGENDIAN ; 
 int SYNCWORD1 ; 
 int SYNCWORD2 ; 
 int /*<<< orphan*/  FUNC2 (int**,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct AVFormatContext*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct AVFormatContext*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct AVFormatContext *s, AVPacket *pkt)
{
    IEC61937Context *ctx = s->priv_data;
    int ret, padding;

    ctx->out_buf = pkt->data;
    ctx->out_bytes = pkt->size;
    ctx->length_code = FUNC1(pkt->size, 2) << 3;
    ctx->use_preamble = 1;
    ctx->extra_bswap = 0;

    ret = ctx->header_info(s, pkt);
    if (ret < 0)
        return ret;
    if (!ctx->pkt_offset)
        return 0;

    padding = (ctx->pkt_offset - ctx->use_preamble * BURST_HEADER_SIZE - ctx->out_bytes) & ~1;
    if (padding < 0) {
        FUNC3(s, AV_LOG_ERROR, "bitrate is too high\n");
        return FUNC0(EINVAL);
    }

    if (ctx->use_preamble) {
        FUNC7(ctx, s->pb, SYNCWORD1);       //Pa
        FUNC7(ctx, s->pb, SYNCWORD2);       //Pb
        FUNC7(ctx, s->pb, ctx->data_type);  //Pc
        FUNC7(ctx, s->pb, ctx->length_code);//Pd
    }

    if (ctx->extra_bswap ^ (ctx->spdif_flags & SPDIF_FLAG_BIGENDIAN)) {
        FUNC4(s->pb, ctx->out_buf, ctx->out_bytes & ~1);
    } else {
        FUNC2(&ctx->buffer, &ctx->buffer_size, ctx->out_bytes + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!ctx->buffer)
            return FUNC0(ENOMEM);
        FUNC5((uint16_t *)ctx->buffer, (uint16_t *)ctx->out_buf, ctx->out_bytes >> 1);
        FUNC4(s->pb, ctx->buffer, ctx->out_bytes & ~1);
    }

    /* a final lone byte has to be MSB aligned */
    if (ctx->out_bytes & 1)
        FUNC7(ctx, s->pb, ctx->out_buf[ctx->out_bytes - 1] << 8);

    FUNC6(s->pb, 0, padding);

    FUNC3(s, AV_LOG_DEBUG, "type=%x len=%i pkt_offset=%i\n",
           ctx->data_type, ctx->out_bytes, ctx->pkt_offset);

    return 0;
}