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
struct TYPE_12__ {int /*<<< orphan*/  avail_out; scalar_t__ next_out; int /*<<< orphan*/  avail_in; scalar_t__ next_in; } ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_4__ zstream; int /*<<< orphan*/  delta_size; scalar_t__ delta; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ RASCContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, AVPacket *avpkt,
                       unsigned size, unsigned uncompressed_size)
{
    RASCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    int zret;

    zret = FUNC7(&s->zstream);
    if (zret != Z_OK) {
        FUNC3(avctx, AV_LOG_ERROR, "Inflate reset error: %d\n", zret);
        return AVERROR_EXTERNAL;
    }

    FUNC2(&s->delta, &s->delta_size, uncompressed_size);
    if (!s->delta)
        return FUNC0(ENOMEM);

    s->zstream.next_in  = avpkt->data + FUNC5(gb);
    s->zstream.avail_in = FUNC1(size, FUNC4(gb));

    s->zstream.next_out  = s->delta;
    s->zstream.avail_out = s->delta_size;

    zret = FUNC6(&s->zstream, Z_FINISH);
    if (zret != Z_STREAM_END) {
        FUNC3(avctx, AV_LOG_ERROR,
               "Inflate failed with return code: %d.\n", zret);
        return AVERROR_INVALIDDATA;
    }

    return 0;
}