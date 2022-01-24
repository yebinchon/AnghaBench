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
struct TYPE_6__ {unsigned int width; unsigned int height; TYPE_1__* priv_data; } ;
struct TYPE_5__ {unsigned int cursor_w; unsigned int cursor_h; int /*<<< orphan*/  delta; int /*<<< orphan*/  cursor; int /*<<< orphan*/  cursor_size; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ RASCContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx,
                       AVPacket *avpkt, unsigned size)
{
    RASCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    unsigned w, h, pos, uncompressed_size;
    int ret;

    pos = FUNC4(gb);
    FUNC3(gb, 8);
    w = FUNC2(gb);
    h = FUNC2(gb);
    FUNC3(gb, 12);
    uncompressed_size = FUNC2(gb);

    if (w > avctx->width || h > avctx->height)
        return AVERROR_INVALIDDATA;

    if (uncompressed_size != 3 * w * h)
        return AVERROR_INVALIDDATA;

    FUNC1(&s->cursor, &s->cursor_size, uncompressed_size);
    if (!s->cursor)
        return FUNC0(ENOMEM);

    ret = FUNC5(avctx, avpkt,
                      size - (FUNC4(gb) - pos),
                      uncompressed_size);
    if (ret < 0)
        return ret;
    FUNC6(s->cursor, s->delta, uncompressed_size);

    FUNC3(gb, size - (FUNC4(gb) - pos));

    s->cursor_w = w;
    s->cursor_h = h;

    return 0;
}