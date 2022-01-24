#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_12__ {TYPE_4__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* decoder_ref; } ;
struct TYPE_10__ {int /*<<< orphan*/  ctx; TYPE_2__* mpi; } ;
struct TYPE_9__ {int (* decode_put_packet ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef  TYPE_3__ RKMPPDecoder ;
typedef  TYPE_4__ RKMPPDecodeContext ;
typedef  int /*<<< orphan*/  MppPacket ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int MPP_ERR_BUFFER_FULL ; 
 int MPP_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, uint8_t *buffer, int size, int64_t pts)
{
    RKMPPDecodeContext *rk_context = avctx->priv_data;
    RKMPPDecoder *decoder = (RKMPPDecoder *)rk_context->decoder_ref->data;
    int ret;
    MppPacket packet;

    // create the MPP packet
    ret = FUNC3(&packet, buffer, size);
    if (ret != MPP_OK) {
        FUNC1(avctx, AV_LOG_ERROR, "Failed to init MPP packet (code = %d)\n", ret);
        return AVERROR_UNKNOWN;
    }

    FUNC5(packet, pts);

    if (!buffer)
        FUNC4(packet);

    ret = decoder->mpi->decode_put_packet(decoder->ctx, packet);
    if (ret != MPP_OK) {
        if (ret == MPP_ERR_BUFFER_FULL) {
            FUNC1(avctx, AV_LOG_DEBUG, "Buffer full writing %d bytes to decoder\n", size);
            ret = FUNC0(EAGAIN);
        } else
            ret = AVERROR_UNKNOWN;
    }
    else
        FUNC1(avctx, AV_LOG_DEBUG, "Wrote %d bytes to decoder\n", size);

    FUNC2(&packet);

    return ret;
}