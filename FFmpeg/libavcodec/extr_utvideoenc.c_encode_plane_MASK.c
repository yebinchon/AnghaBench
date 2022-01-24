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
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
typedef  int int64_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* bswap_buf ) (int*,int*,int) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  (* sub_left_predict ) (int*,int*,int,int,int) ;} ;
struct TYPE_13__ {int frame_pred; int slices; scalar_t__ slice_bits; TYPE_2__ bdsp; TYPE_1__ llvidencdsp; } ;
typedef  TYPE_3__ UtvideoContext ;
struct TYPE_15__ {scalar_t__ pix_fmt; TYPE_3__* priv_data; } ;
struct TYPE_14__ {int len; int sym; } ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  TYPE_4__ HuffEntry ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_YUV420P ; 
#define  PRED_LEFT 130 
#define  PRED_MEDIAN 129 
#define  PRED_NONE 128 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int,int*) ; 
 int FUNC8 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int*,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,int) ; 
 int FUNC12 (int*,scalar_t__,int,int,int,TYPE_4__*) ; 

__attribute__((used)) static int FUNC13(AVCodecContext *avctx, uint8_t *src,
                        uint8_t *dst, ptrdiff_t stride, int plane_no,
                        int width, int height, PutByteContext *pb)
{
    UtvideoContext *c        = avctx->priv_data;
    uint8_t  lengths[256];
    uint64_t counts[256]     = { 0 };

    HuffEntry he[256];

    uint32_t offset = 0, slice_len = 0;
    const int cmask = !(!plane_no && avctx->pix_fmt == AV_PIX_FMT_YUV420P);
    int      i, sstart, send = 0;
    int      symbol;
    int      ret;

    /* Do prediction / make planes */
    switch (c->frame_pred) {
    case PRED_NONE:
        for (i = 0; i < c->slices; i++) {
            sstart = send;
            send   = height * (i + 1) / c->slices & cmask;
            FUNC0(dst + sstart * width, width,
                                src + sstart * stride, stride,
                                width, send - sstart);
        }
        break;
    case PRED_LEFT:
        for (i = 0; i < c->slices; i++) {
            sstart = send;
            send   = height * (i + 1) / c->slices & cmask;
            c->llvidencdsp.sub_left_predict(dst + sstart * width, src + sstart * stride, stride, width, send - sstart);
        }
        break;
    case PRED_MEDIAN:
        for (i = 0; i < c->slices; i++) {
            sstart = send;
            send   = height * (i + 1) / c->slices & cmask;
            FUNC9(c, src + sstart * stride, dst + sstart * width,
                           stride, width, send - sstart);
        }
        break;
    default:
        FUNC1(avctx, AV_LOG_ERROR, "Unknown prediction mode: %d\n",
               c->frame_pred);
        return AVERROR_OPTION_NOT_FOUND;
    }

    /* Count the usage of values */
    FUNC7(dst, width, height, counts);

    /* Check for a special case where only one symbol was used */
    for (symbol = 0; symbol < 256; symbol++) {
        /* If non-zero count is found, see if it matches width * height */
        if (counts[symbol]) {
            /* Special case if only one symbol was used */
            if (counts[symbol] == width * (int64_t)height) {
                /*
                 * Write a zero for the single symbol
                 * used in the plane, else 0xFF.
                 */
                for (i = 0; i < 256; i++) {
                    if (i == symbol)
                        FUNC3(pb, 0);
                    else
                        FUNC3(pb, 0xFF);
                }

                /* Write zeroes for lengths */
                for (i = 0; i < c->slices; i++)
                    FUNC4(pb, 0);

                /* And that's all for that plane folks */
                return 0;
            }
            break;
        }
    }

    /* Calculate huffman lengths */
    if ((ret = FUNC8(lengths, counts, 256, 1)) < 0)
        return ret;

    /*
     * Write the plane's header into the output packet:
     * - huffman code lengths (256 bytes)
     * - slice end offsets (gotten from the slice lengths)
     */
    for (i = 0; i < 256; i++) {
        FUNC3(pb, lengths[i]);

        he[i].len = lengths[i];
        he[i].sym = i;
    }

    /* Calculate the huffman codes themselves */
    FUNC6(he);

    send = 0;
    for (i = 0; i < c->slices; i++) {
        sstart  = send;
        send    = height * (i + 1) / c->slices & cmask;

        /*
         * Write the huffman codes to a buffer,
         * get the offset in bits and convert to bytes.
         */
        offset += FUNC12(dst + sstart * width, c->slice_bits,
                                   width * height + 4, width,
                                   send - sstart, he) >> 3;

        slice_len = offset - slice_len;

        /* Byteswap the written huffman codes */
        c->bdsp.bswap_buf((uint32_t *) c->slice_bits,
                          (uint32_t *) c->slice_bits,
                          slice_len >> 2);

        /* Write the offset to the stream */
        FUNC4(pb, offset);

        /* Seek to the data part of the packet */
        FUNC5(pb, 4 * (c->slices - i - 1) +
                           offset - slice_len, SEEK_CUR);

        /* Write the slices' data into the output packet */
        FUNC2(pb, c->slice_bits, slice_len);

        /* Seek back to the slice offsets */
        FUNC5(pb, -4 * (c->slices - i - 1) - offset,
                           SEEK_CUR);

        slice_len = offset;
    }

    /* And at the end seek to the end of written slice(s) */
    FUNC5(pb, offset, SEEK_CUR);

    return 0;
}