#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {unsigned char** data; unsigned int* linesize; } ;
struct TYPE_12__ {TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_6__* frame; TYPE_1__* avctx; } ;
struct TYPE_10__ {unsigned int height; int width; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ FlicDecodeContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
#define  FLI_256_COLOR 138 
#define  FLI_BLACK 137 
#define  FLI_BRUN 136 
#define  FLI_COLOR 135 
#define  FLI_COPY 134 
#define  FLI_DELTA 133 
#define  FLI_DTA_BRUN 132 
#define  FLI_DTA_COPY 131 
#define  FLI_DTA_LC 130 
#define  FLI_LC 129 
#define  FLI_MINI 128 
 int FUNC3 (void*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*,int) ; 
 int FUNC15 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int,int) ; 
 int FUNC17 (void*,int) ; 

__attribute__((used)) static int FUNC18(AVCodecContext *avctx,
                                   void *data, int *got_frame,
                                   const uint8_t *buf, int buf_size)
{
    FlicDecodeContext *s = avctx->priv_data;

    GetByteContext g2;
    int pixel_ptr;
    unsigned char palette_idx1;

    unsigned int frame_size;
    int num_chunks;

    unsigned int chunk_size;
    int chunk_type;

    int i, j, ret;

    int lines;
    int compressed_lines;
    int line_packets;
    int y_ptr;
    int byte_run;
    int pixel_skip;
    int pixel_countdown;
    unsigned char *pixels;
    int pixel;
    unsigned int pixel_limit;

    FUNC11(&g2, buf, buf_size);

    if ((ret = FUNC15(avctx, s->frame, 0)) < 0)
        return ret;

    pixels = s->frame->data[0];
    pixel_limit = s->avctx->height * s->frame->linesize[0];

    frame_size = FUNC10(&g2);
    FUNC12(&g2, 2);  /* skip the magic number */
    num_chunks = FUNC8(&g2);
    FUNC12(&g2, 8);  /* skip padding */
    if (frame_size > buf_size)
        frame_size = buf_size;

    if (frame_size < 16)
        return AVERROR_INVALIDDATA;
    frame_size -= 16;

    /* iterate through the chunks */
    while ((frame_size > 0) && (num_chunks > 0) &&
            FUNC7(&g2) >= 4) {
        int stream_ptr_after_chunk;
        chunk_size = FUNC10(&g2);
        if (chunk_size > frame_size) {
            FUNC4(avctx, AV_LOG_WARNING,
                   "Invalid chunk_size = %u > frame_size = %u\n", chunk_size, frame_size);
            chunk_size = frame_size;
        }
        stream_ptr_after_chunk = FUNC13(&g2) - 4 + chunk_size;

        chunk_type = FUNC8(&g2);


        switch (chunk_type) {
        case FLI_256_COLOR:
        case FLI_COLOR:
            /* For some reason, it seems that non-palettized flics do
             * include one of these chunks in their first frame.
             * Why I do not know, it seems rather extraneous. */
            FUNC14(avctx,
                    "Unexpected Palette chunk %d in non-palettized FLC\n",
                    chunk_type);
            FUNC12(&g2, chunk_size - 6);
            break;

        case FLI_DELTA:
        case FLI_DTA_LC:
            y_ptr = 0;
            compressed_lines = FUNC8(&g2);
            while (compressed_lines > 0) {
                if (FUNC13(&g2) + 2 > stream_ptr_after_chunk)
                    break;
                if (y_ptr > pixel_limit)
                    return AVERROR_INVALIDDATA;
                line_packets = FUNC17(FUNC8(&g2), 16);
                if (line_packets < 0) {
                    line_packets = -line_packets;
                    if (line_packets > s->avctx->height)
                        return AVERROR_INVALIDDATA;
                    y_ptr += line_packets * s->frame->linesize[0];
                } else {
                    compressed_lines--;
                    pixel_ptr = y_ptr;
                    FUNC1(0);
                    pixel_countdown = s->avctx->width;
                    for (i = 0; i < line_packets; i++) {
                        /* account for the skip bytes */
                        if (FUNC13(&g2) + 2 > stream_ptr_after_chunk)
                            break;
                        pixel_skip = FUNC6(&g2);
                        pixel_ptr += (pixel_skip*3); /* Pixel is 3 bytes wide */
                        pixel_countdown -= pixel_skip;
                        byte_run = FUNC17(FUNC6(&g2), 8);
                        if (byte_run < 0) {
                            byte_run = -byte_run;
                            pixel    = FUNC9(&g2);
                            FUNC1(3 * byte_run);
                            for (j = 0; j < byte_run; j++, pixel_countdown -= 1) {
                                FUNC0(&pixels[pixel_ptr], pixel);
                                pixel_ptr += 3;
                            }
                        } else {
                            if (FUNC13(&g2) + 2*byte_run > stream_ptr_after_chunk)
                                break;
                            FUNC1(3 * byte_run);
                            for (j = 0; j < byte_run; j++, pixel_countdown--) {
                                pixel = FUNC9(&g2);
                                FUNC0(&pixels[pixel_ptr], pixel);
                                pixel_ptr += 3;
                            }
                        }
                    }

                    y_ptr += s->frame->linesize[0];
                }
            }
            break;

        case FLI_LC:
            FUNC4(avctx, AV_LOG_ERROR, "Unexpected FLI_LC chunk in non-palettized FLC\n");
            FUNC12(&g2, chunk_size - 6);
            break;

        case FLI_BLACK:
            /* set the whole frame to 0x00 which is black for 24 bit mode. */
            FUNC16(pixels, 0x00,
                   s->frame->linesize[0] * s->avctx->height);
            break;

        case FLI_BRUN:
            y_ptr = 0;
            for (lines = 0; lines < s->avctx->height; lines++) {
                pixel_ptr = y_ptr;
                /* disregard the line packets; instead, iterate through all
                 * pixels on a row */
                FUNC12(&g2, 1);
                pixel_countdown = (s->avctx->width * 3);

                while (pixel_countdown > 0) {
                    if (FUNC13(&g2) + 1 > stream_ptr_after_chunk)
                        break;
                    byte_run = FUNC17(FUNC6(&g2), 8);
                    if (byte_run > 0) {
                        palette_idx1 = FUNC6(&g2);
                        FUNC1(byte_run);
                        for (j = 0; j < byte_run; j++) {
                            pixels[pixel_ptr++] = palette_idx1;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                FUNC4(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d) (linea%d)\n",
                                       pixel_countdown, lines);
                        }
                    } else {  /* copy bytes if byte_run < 0 */
                        byte_run = -byte_run;
                        if (FUNC13(&g2) + byte_run > stream_ptr_after_chunk)
                            break;
                        FUNC1(byte_run);
                        for (j = 0; j < byte_run; j++) {
                            palette_idx1 = FUNC6(&g2);
                            pixels[pixel_ptr++] = palette_idx1;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                FUNC4(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d) at line %d\n",
                                       pixel_countdown, lines);
                        }
                    }
                }

                y_ptr += s->frame->linesize[0];
            }
            break;

        case FLI_DTA_BRUN:
            y_ptr = 0;
            for (lines = 0; lines < s->avctx->height; lines++) {
                pixel_ptr = y_ptr;
                /* disregard the line packets; instead, iterate through all
                 * pixels on a row */
                FUNC12(&g2, 1);
                pixel_countdown = s->avctx->width; /* Width is in pixels, not bytes */

                while (pixel_countdown > 0) {
                    if (FUNC13(&g2) + 1 > stream_ptr_after_chunk)
                        break;
                    byte_run = FUNC17(FUNC6(&g2), 8);
                    if (byte_run > 0) {
                        pixel = FUNC9(&g2);
                        FUNC1(3 * byte_run);
                        for (j = 0; j < byte_run; j++) {
                            FUNC0(pixels + pixel_ptr, pixel);
                            pixel_ptr += 3;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                FUNC4(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d)\n",
                                       pixel_countdown);
                        }
                    } else {  /* copy pixels if byte_run < 0 */
                        byte_run = -byte_run;
                        if (FUNC13(&g2) + 3 * byte_run > stream_ptr_after_chunk)
                            break;
                        FUNC1(3 * byte_run);
                        for (j = 0; j < byte_run; j++) {
                            pixel = FUNC9(&g2);
                            FUNC0(pixels + pixel_ptr, pixel);
                            pixel_ptr  += 3;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                FUNC4(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d)\n",
                                       pixel_countdown);
                        }
                    }
                }

                y_ptr += s->frame->linesize[0];
            }
            break;

        case FLI_COPY:
        case FLI_DTA_COPY:
            /* copy the chunk (uncompressed frame) */
            if (chunk_size - 6 > (unsigned int)(FUNC2(s->avctx->width, 2) * s->avctx->height)*3) {
                FUNC4(avctx, AV_LOG_ERROR, "In chunk FLI_COPY : source data (%d bytes) " \
                       "bigger than image, skipping chunk\n", chunk_size - 6);
                FUNC12(&g2, chunk_size - 6);
            } else {
                for (y_ptr = 0; y_ptr < s->frame->linesize[0] * s->avctx->height;
                     y_ptr += s->frame->linesize[0]) {

                    FUNC5(&g2, pixels + y_ptr, 3*s->avctx->width);
                    if (s->avctx->width & 1)
                        FUNC12(&g2, 3);
                }
            }
            break;

        case FLI_MINI:
            /* some sort of a thumbnail? disregard this chunk... */
            FUNC12(&g2, chunk_size - 6);
            break;

        default:
            FUNC4(avctx, AV_LOG_ERROR, "Unrecognized chunk type: %d\n", chunk_type);
            break;
        }

        if (stream_ptr_after_chunk - FUNC13(&g2) >= 0) {
            FUNC12(&g2, stream_ptr_after_chunk - FUNC13(&g2));
        } else {
            FUNC4(avctx, AV_LOG_ERROR, "Chunk overread\n");
            break;
        }

        frame_size -= chunk_size;
        num_chunks--;
    }

    /* by the end of the chunk, the stream ptr should equal the frame
     * size (minus 1, possibly); if it doesn't, issue a warning */
    if ((FUNC7(&g2) != 0) && (FUNC7(&g2) != 1))
        FUNC4(avctx, AV_LOG_ERROR, "Processed FLI chunk where chunk size = %d " \
               "and final chunk ptr = %d\n", buf_size, FUNC13(&g2));

    if ((ret = FUNC3(data, s->frame)) < 0)
        return ret;

    *got_frame = 1;

    return buf_size;
}