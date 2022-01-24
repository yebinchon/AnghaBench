#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_18__ {int /*<<< orphan*/  avail_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/  avail_in; scalar_t__ next_in; } ;
struct TYPE_17__ {int height; TYPE_3__* priv_data; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {TYPE_2__* frame1; TYPE_6__ zstream; int /*<<< orphan*/  stride; TYPE_1__* frame2; int /*<<< orphan*/  gb; } ;
struct TYPE_14__ {int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_13__ {int* linesize; int /*<<< orphan*/ ** data; } ;
typedef  TYPE_3__ RASCContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  Z_SYNC_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*,unsigned int) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx,
                       AVPacket *avpkt, unsigned size)
{
    RASCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    uint8_t *dst;
    unsigned pos;
    int zret, ret;

    pos = FUNC4(gb);
    if (FUNC2(gb) == 0x65) {
        ret = FUNC5(avctx, avpkt, size);
        if (ret < 0)
            return ret;
    }

    if (!s->frame2->data[0])
        return AVERROR_INVALIDDATA;

    zret = FUNC7(&s->zstream);
    if (zret != Z_OK) {
        FUNC0(avctx, AV_LOG_ERROR, "Inflate reset error: %d\n", zret);
        return AVERROR_EXTERNAL;
    }

    s->zstream.next_in  = avpkt->data + FUNC4(gb);
    s->zstream.avail_in = FUNC1(gb);

    dst = s->frame2->data[0] + (avctx->height - 1) * s->frame2->linesize[0];
    for (int i = 0; i < avctx->height; i++) {
        s->zstream.next_out  = dst;
        s->zstream.avail_out = s->stride;

        zret = FUNC6(&s->zstream, Z_SYNC_FLUSH);
        if (zret != Z_OK && zret != Z_STREAM_END) {
            FUNC0(avctx, AV_LOG_ERROR,
                   "Inflate failed with return code: %d.\n", zret);
            return AVERROR_INVALIDDATA;
        }

        dst -= s->frame2->linesize[0];
    }

    dst = s->frame1->data[0] + (avctx->height - 1) * s->frame1->linesize[0];
    for (int i = 0; i < avctx->height; i++) {
        s->zstream.next_out  = dst;
        s->zstream.avail_out = s->stride;

        zret = FUNC6(&s->zstream, Z_SYNC_FLUSH);
        if (zret != Z_OK && zret != Z_STREAM_END) {
            FUNC0(avctx, AV_LOG_ERROR,
                   "Inflate failed with return code: %d.\n", zret);
            return AVERROR_INVALIDDATA;
        }

        dst -= s->frame1->linesize[0];
    }

    FUNC3(gb, size - (FUNC4(gb) - pos));

    return 0;
}