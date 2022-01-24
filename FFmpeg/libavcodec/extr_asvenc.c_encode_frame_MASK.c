#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_19__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_23__ {int mb_height; int mb_width; int mb_height2; int mb_width2; TYPE_1__ bbdsp; int /*<<< orphan*/  pb; int /*<<< orphan*/  block; } ;
struct TYPE_22__ {scalar_t__ codec_id; TYPE_5__* priv_data; } ;
struct TYPE_21__ {int width; int height; int* linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  format; } ;
struct TYPE_20__ {size_t* data; int size; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;
typedef  TYPE_5__ ASV1Context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ AV_CODEC_ID_ASV1 ; 
 scalar_t__ AV_INPUT_BUFFER_MIN_SIZE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC2 (int,int) ; 
 int MAX_MB_SIZE ; 
 TYPE_3__* FUNC3 () ; 
 int FUNC4 (TYPE_3__*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**) ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__* const,TYPE_3__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__* const,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t* ff_reverse ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx, AVPacket *pkt,
                        const AVFrame *pict, int *got_packet)
{
    ASV1Context *const a = avctx->priv_data;
    int size, ret;
    int mb_x, mb_y;

    if (pict->width % 16 || pict->height % 16) {
        AVFrame *clone = FUNC3();
        int i;

        if (!clone)
            return FUNC0(ENOMEM);
        clone->format = pict->format;
        clone->width  = FUNC2(pict->width, 16);
        clone->height = FUNC2(pict->height, 16);
        ret = FUNC6(clone, 32);
        if (ret < 0) {
            FUNC5(&clone);
            return ret;
        }

        ret = FUNC4(clone, pict);
        if (ret < 0) {
            FUNC5(&clone);
            return ret;
        }

        for (i = 0; i<3; i++) {
            int x, y;
            int w  = FUNC1(pict->width, !!i);
            int h  = FUNC1(pict->height, !!i);
            int w2 = FUNC1(clone->width, !!i);
            int h2 = FUNC1(clone->height, !!i);
            for (y=0; y<h; y++)
                for (x=w; x<w2; x++)
                    clone->data[i][x + y*clone->linesize[i]] =
                        clone->data[i][w - 1 + y*clone->linesize[i]];
            for (y=h; y<h2; y++)
                for (x=0; x<w2; x++)
                    clone->data[i][x + y*clone->linesize[i]] =
                        clone->data[i][x + (h-1)*clone->linesize[i]];
        }
        ret = FUNC16(avctx, pkt, clone, got_packet);

        FUNC5(&clone);
        return ret;
    }

    if ((ret = FUNC11(avctx, pkt, a->mb_height * a->mb_width * MAX_MB_SIZE +
                                AV_INPUT_BUFFER_MIN_SIZE, 0)) < 0)
        return ret;

    FUNC12(&a->pb, pkt->data, pkt->size);

    for (mb_y = 0; mb_y < a->mb_height2; mb_y++) {
        for (mb_x = 0; mb_x < a->mb_width2; mb_x++) {
            FUNC8(a, pict, mb_x, mb_y);
            FUNC10(a, a->block);
        }
    }

    if (a->mb_width2 != a->mb_width) {
        mb_x = a->mb_width2;
        for (mb_y = 0; mb_y < a->mb_height2; mb_y++) {
            FUNC8(a, pict, mb_x, mb_y);
            FUNC10(a, a->block);
        }
    }

    if (a->mb_height2 != a->mb_height) {
        mb_y = a->mb_height2;
        for (mb_x = 0; mb_x < a->mb_width; mb_x++) {
            FUNC8(a, pict, mb_x, mb_y);
            FUNC10(a, a->block);
        }
    }
    FUNC9();

    FUNC7(&a->pb);
    while (FUNC14(&a->pb) & 31)
        FUNC13(&a->pb, 8, 0);

    size = FUNC14(&a->pb) / 32;

    if (avctx->codec_id == AV_CODEC_ID_ASV1) {
        a->bbdsp.bswap_buf((uint32_t *) pkt->data,
                           (uint32_t *) pkt->data, size);
    } else {
        int i;
        for (i = 0; i < 4 * size; i++)
            pkt->data[i] = ff_reverse[pkt->data[i]];
    }

    pkt->size   = size * 4;
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}