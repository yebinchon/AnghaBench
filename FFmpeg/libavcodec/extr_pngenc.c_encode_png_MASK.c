#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_12__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; scalar_t__ size; scalar_t__ data; } ;
struct TYPE_10__ {int bits_per_pixel; scalar_t__ bytestream_start; scalar_t__ bytestream; scalar_t__ bytestream_end; int /*<<< orphan*/  zstream; } ;
typedef  TYPE_1__ PNGEncContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_INPUT_BUFFER_MIN_SIZE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t INT_MAX ; 
 int IOBUF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  PNGSIG ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, AVPacket *pkt,
                      const AVFrame *pict, int *got_packet)
{
    PNGEncContext *s = avctx->priv_data;
    int ret;
    int enc_row_size;
    size_t max_packet_size;

    enc_row_size    = FUNC3(&s->zstream, (avctx->width * s->bits_per_pixel + 7) >> 3);
    max_packet_size =
        AV_INPUT_BUFFER_MIN_SIZE + // headers
        avctx->height * (
            enc_row_size +
            12 * (((int64_t)enc_row_size + IOBUF_SIZE - 1) / IOBUF_SIZE) // IDAT * ceil(enc_row_size / IOBUF_SIZE)
        );
    if (max_packet_size > INT_MAX)
        return FUNC0(ENOMEM);
    ret = FUNC6(avctx, pkt, max_packet_size, 0);
    if (ret < 0)
        return ret;

    s->bytestream_start =
    s->bytestream       = pkt->data;
    s->bytestream_end   = pkt->data + pkt->size;

    FUNC1(s->bytestream, PNGSIG);
    s->bytestream += 8;

    ret = FUNC5(avctx, pict);
    if (ret < 0)
        return ret;

    ret = FUNC4(avctx, pict);
    if (ret < 0)
        return ret;

    FUNC7(&s->bytestream, FUNC2('I', 'E', 'N', 'D'), NULL, 0);

    pkt->size = s->bytestream - s->bytestream_start;
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}