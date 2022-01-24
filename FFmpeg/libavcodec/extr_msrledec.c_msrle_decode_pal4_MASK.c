#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int height; int width; } ;
struct TYPE_6__ {unsigned char** data; int* linesize; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, AVFrame *pic,
                             GetByteContext *gb)
{
    unsigned char rle_code;
    unsigned char extra_byte, odd_pixel;
    unsigned char stream_byte;
    int pixel_ptr = 0;
    int line = avctx->height - 1;
    int i;

    while (line >= 0 && pixel_ptr <= avctx->width) {
        if (FUNC2(gb) <= 0) {
            FUNC0(avctx, AV_LOG_ERROR,
                   "MS RLE: bytestream overrun, %dx%d left\n",
                   avctx->width - pixel_ptr, line);
            return AVERROR_INVALIDDATA;
        }
        rle_code = stream_byte = FUNC3(gb);
        if (rle_code == 0) {
            /* fetch the next byte to see how to handle escape code */
            stream_byte = FUNC1(gb);
            if (stream_byte == 0) {
                /* line is done, goto the next one */
                line--;
                pixel_ptr = 0;
            } else if (stream_byte == 1) {
                /* decode is done */
                return 0;
            } else if (stream_byte == 2) {
                /* reposition frame decode coordinates */
                stream_byte = FUNC1(gb);
                pixel_ptr += stream_byte;
                stream_byte = FUNC1(gb);
                line -= stream_byte;
            } else {
                // copy pixels from encoded stream
                odd_pixel =  stream_byte & 1;
                rle_code = (stream_byte + 1) / 2;
                extra_byte = rle_code & 0x01;
                if (pixel_ptr + 2*rle_code - odd_pixel > avctx->width ||
                    FUNC2(gb) < rle_code) {
                    FUNC0(avctx, AV_LOG_ERROR,
                           "MS RLE: frame/stream ptr just went out of bounds (copy)\n");
                    return AVERROR_INVALIDDATA;
                }

                for (i = 0; i < rle_code; i++) {
                    if (pixel_ptr >= avctx->width)
                        break;
                    stream_byte = FUNC3(gb);
                    pic->data[0][line * pic->linesize[0] + pixel_ptr] = stream_byte >> 4;
                    pixel_ptr++;
                    if (i + 1 == rle_code && odd_pixel)
                        break;
                    if (pixel_ptr >= avctx->width)
                        break;
                    pic->data[0][line * pic->linesize[0] + pixel_ptr] = stream_byte & 0x0F;
                    pixel_ptr++;
                }

                // if the RLE code is odd, skip a byte in the stream
                if (extra_byte)
                    FUNC4(gb, 1);
            }
        } else {
            // decode a run of data
            if (pixel_ptr + rle_code > avctx->width + 1) {
                FUNC0(avctx, AV_LOG_ERROR,
                       "MS RLE: frame ptr just went out of bounds (run) %d %d %d\n", pixel_ptr, rle_code, avctx->width);
                return AVERROR_INVALIDDATA;
            }
            stream_byte = FUNC1(gb);
            for (i = 0; i < rle_code; i++) {
                if (pixel_ptr >= avctx->width)
                    break;
                if ((i & 1) == 0)
                    pic->data[0][line * pic->linesize[0] + pixel_ptr] = stream_byte >> 4;
                else
                    pic->data[0][line * pic->linesize[0] + pixel_ptr] = stream_byte & 0x0F;
                pixel_ptr++;
            }
        }
    }

    /* one last sanity check on the way out */
    if (FUNC2(gb)) {
        FUNC0(avctx, AV_LOG_ERROR,
               "MS RLE: ended frame decode with %d bytes left over\n",
               FUNC2(gb));
        return AVERROR_INVALIDDATA;
    }

    return 0;
}