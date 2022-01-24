#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ RTPMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ RTP_VC2HQ_PL_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *ctx, uint8_t parse_code, int info_hdr_size, const uint8_t *buf, int size, int i, int f, int rtp_m)
{
    RTPMuxContext *rtp_ctx = ctx->priv_data;

    FUNC0(&rtp_ctx->buf[0], 0); /* extended sequence number */
    FUNC1 (&rtp_ctx->buf[2], i ? (f ? (0x03) : (0x02)) : 0x00); /* flags: interlaced, second field */
    FUNC1 (&rtp_ctx->buf[3], parse_code);
    if (size > 0)
        FUNC3(&rtp_ctx->buf[4 + info_hdr_size], buf, size);
    FUNC2(ctx, rtp_ctx->buf, RTP_VC2HQ_PL_HEADER_SIZE + info_hdr_size + size, rtp_m);
}