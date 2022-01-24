#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_19__ {int width; int height; int* extradata; TYPE_3__* priv_data; } ;
struct TYPE_18__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ;} ;
struct TYPE_17__ {int* changes_map; int codes_count; scalar_t__ max_codes_bits; TYPE_12__* frame; int /*<<< orphan*/  vlc; TYPE_2__* codes; scalar_t__ bswapbuf; TYPE_1__ bdsp; int /*<<< orphan*/  bswapbuf_size; } ;
struct TYPE_16__ {int /*<<< orphan*/  code; int /*<<< orphan*/  size; } ;
struct TYPE_14__ {scalar_t__* data; } ;
typedef  TYPE_3__ MotionPixelsContext ;
typedef  int /*<<< orphan*/  HuffCode ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (void*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_5__*,TYPE_12__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC14(AVCodecContext *avctx,
                                 void *data, int *got_frame,
                                 AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MotionPixelsContext *mp = avctx->priv_data;
    GetBitContext gb;
    int i, count1, count2, sz, ret;

    if ((ret = FUNC4(avctx, mp->frame, 0)) < 0)
        return ret;

    /* le32 bitstream msb first */
    FUNC1(&mp->bswapbuf, &mp->bswapbuf_size, buf_size);
    if (!mp->bswapbuf)
        return FUNC0(ENOMEM);
    mp->bdsp.bswap_buf((uint32_t *) mp->bswapbuf, (const uint32_t *) buf,
                       buf_size / 4);
    if (buf_size & 3)
        FUNC8(mp->bswapbuf + (buf_size & ~3), buf + (buf_size & ~3), buf_size & 3);
    FUNC6(&gb, mp->bswapbuf, buf_size * 8);

    FUNC9(mp->changes_map, 0, avctx->width * avctx->height);
    for (i = !(avctx->extradata[1] & 2); i < 2; ++i) {
        count1 = FUNC5(&gb, 12);
        count2 = FUNC5(&gb, 12);
        FUNC11(mp, &gb, count1, 8, i);
        FUNC11(mp, &gb, count2, 4, i);
    }

    mp->codes_count = FUNC5(&gb, 4);
    if (mp->codes_count == 0)
        goto end;

    if (mp->changes_map[0] == 0) {
        *(uint16_t *)mp->frame->data[0] = FUNC5(&gb, 15);
        mp->changes_map[0] = 1;
    }
    if (FUNC12(mp, &gb) < 0)
        goto end;

    sz = FUNC5(&gb, 18);
    if (avctx->extradata[0] != 5)
        sz += FUNC5(&gb, 18);
    if (sz == 0)
        goto end;

    if (mp->max_codes_bits <= 0)
        goto end;
    if (FUNC7(&mp->vlc, mp->max_codes_bits, mp->codes_count, &mp->codes[0].size, sizeof(HuffCode), 1, &mp->codes[0].code, sizeof(HuffCode), 4, 0))
        goto end;
    FUNC10(mp, &gb);
    FUNC3(&mp->vlc);

end:
    if ((ret = FUNC2(data, mp->frame)) < 0)
        return ret;
    *got_frame       = 1;
    return buf_size;
}