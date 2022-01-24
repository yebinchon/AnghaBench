#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_15__ {int key_frame; int /*<<< orphan*/  pict_type; } ;
struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int* data; int size; } ;
struct TYPE_12__ {int decomp_size; TYPE_5__* pic; int /*<<< orphan*/  height; int /*<<< orphan*/  linelen; int /*<<< orphan*/  decomp_buf; } ;
typedef  TYPE_1__ CamStudioContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  Z_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long*,int const*,int) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    CamStudioContext *c = avctx->priv_data;
    int ret;

    if (buf_size < 2) {
        FUNC3(avctx, AV_LOG_ERROR, "coded frame too small\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC6(avctx, c->pic, 0)) < 0)
        return ret;

    // decompress data
    switch ((buf[0] >> 1) & 7) {
    case 0: { // lzo compression
        int outlen = c->decomp_size, inlen = buf_size - 2;
        if (FUNC4(c->decomp_buf, &outlen, &buf[2], &inlen) || outlen) {
            FUNC3(avctx, AV_LOG_ERROR, "error during lzo decompression\n");
            return AVERROR_INVALIDDATA;
        }
        break;
    }
    case 1: { // zlib compression
#if CONFIG_ZLIB
        unsigned long dlen = c->decomp_size;
        if (uncompress(c->decomp_buf, &dlen, &buf[2], buf_size - 2) != Z_OK) {
            av_log(avctx, AV_LOG_ERROR, "error during zlib decompression\n");
            return AVERROR_INVALIDDATA;
        }
        break;
#else
        FUNC3(avctx, AV_LOG_ERROR, "compiled without zlib support\n");
        return FUNC0(ENOSYS);
#endif
    }
    default:
        FUNC3(avctx, AV_LOG_ERROR, "unknown compression\n");
        return AVERROR_INVALIDDATA;
    }

    // flip upside down, add difference frame
    if (buf[0] & 1) { // keyframe
        c->pic->pict_type = AV_PICTURE_TYPE_I;
        c->pic->key_frame = 1;
              FUNC5(c->pic, c->decomp_buf,
                                 c->linelen, c->height);
    } else {
        c->pic->pict_type = AV_PICTURE_TYPE_P;
        c->pic->key_frame = 0;
              FUNC1(c->pic, c->decomp_buf,
                                c->linelen, c->height);
    }

    *got_frame = 1;
    if ((ret = FUNC2(data, c->pic)) < 0)
        return ret;

    return buf_size;
}