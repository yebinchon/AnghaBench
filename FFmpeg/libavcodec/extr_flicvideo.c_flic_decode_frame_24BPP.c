
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {unsigned char** data; unsigned int* linesize; } ;
struct TYPE_12__ {TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_6__* frame; TYPE_1__* avctx; } ;
struct TYPE_10__ {unsigned int height; int width; } ;
typedef int GetByteContext ;
typedef TYPE_2__ FlicDecodeContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_WL24 (unsigned char*,int) ;
 int CHECK_PIXEL_PTR (int) ;
 int FFALIGN (int,int) ;
 int av_frame_ref (void*,TYPE_6__*) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int bytestream2_get_buffer (int *,unsigned char*,int) ;
 void* bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_le16 (int *) ;
 int bytestream2_get_le24 (int *) ;
 unsigned int bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;
 int ff_dlog (TYPE_3__*,char*,int) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_6__*,int ) ;
 int memset (unsigned char*,int,int) ;
 int sign_extend (void*,int) ;

__attribute__((used)) static int flic_decode_frame_24BPP(AVCodecContext *avctx,
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

    bytestream2_init(&g2, buf, buf_size);

    if ((ret = ff_reget_buffer(avctx, s->frame, 0)) < 0)
        return ret;

    pixels = s->frame->data[0];
    pixel_limit = s->avctx->height * s->frame->linesize[0];

    frame_size = bytestream2_get_le32(&g2);
    bytestream2_skip(&g2, 2);
    num_chunks = bytestream2_get_le16(&g2);
    bytestream2_skip(&g2, 8);
    if (frame_size > buf_size)
        frame_size = buf_size;

    if (frame_size < 16)
        return AVERROR_INVALIDDATA;
    frame_size -= 16;


    while ((frame_size > 0) && (num_chunks > 0) &&
            bytestream2_get_bytes_left(&g2) >= 4) {
        int stream_ptr_after_chunk;
        chunk_size = bytestream2_get_le32(&g2);
        if (chunk_size > frame_size) {
            av_log(avctx, AV_LOG_WARNING,
                   "Invalid chunk_size = %u > frame_size = %u\n", chunk_size, frame_size);
            chunk_size = frame_size;
        }
        stream_ptr_after_chunk = bytestream2_tell(&g2) - 4 + chunk_size;

        chunk_type = bytestream2_get_le16(&g2);


        switch (chunk_type) {
        case 138:
        case 135:



            ff_dlog(avctx,
                    "Unexpected Palette chunk %d in non-palettized FLC\n",
                    chunk_type);
            bytestream2_skip(&g2, chunk_size - 6);
            break;

        case 133:
        case 130:
            y_ptr = 0;
            compressed_lines = bytestream2_get_le16(&g2);
            while (compressed_lines > 0) {
                if (bytestream2_tell(&g2) + 2 > stream_ptr_after_chunk)
                    break;
                if (y_ptr > pixel_limit)
                    return AVERROR_INVALIDDATA;
                line_packets = sign_extend(bytestream2_get_le16(&g2), 16);
                if (line_packets < 0) {
                    line_packets = -line_packets;
                    if (line_packets > s->avctx->height)
                        return AVERROR_INVALIDDATA;
                    y_ptr += line_packets * s->frame->linesize[0];
                } else {
                    compressed_lines--;
                    pixel_ptr = y_ptr;
                    CHECK_PIXEL_PTR(0);
                    pixel_countdown = s->avctx->width;
                    for (i = 0; i < line_packets; i++) {

                        if (bytestream2_tell(&g2) + 2 > stream_ptr_after_chunk)
                            break;
                        pixel_skip = bytestream2_get_byte(&g2);
                        pixel_ptr += (pixel_skip*3);
                        pixel_countdown -= pixel_skip;
                        byte_run = sign_extend(bytestream2_get_byte(&g2), 8);
                        if (byte_run < 0) {
                            byte_run = -byte_run;
                            pixel = bytestream2_get_le24(&g2);
                            CHECK_PIXEL_PTR(3 * byte_run);
                            for (j = 0; j < byte_run; j++, pixel_countdown -= 1) {
                                AV_WL24(&pixels[pixel_ptr], pixel);
                                pixel_ptr += 3;
                            }
                        } else {
                            if (bytestream2_tell(&g2) + 2*byte_run > stream_ptr_after_chunk)
                                break;
                            CHECK_PIXEL_PTR(3 * byte_run);
                            for (j = 0; j < byte_run; j++, pixel_countdown--) {
                                pixel = bytestream2_get_le24(&g2);
                                AV_WL24(&pixels[pixel_ptr], pixel);
                                pixel_ptr += 3;
                            }
                        }
                    }

                    y_ptr += s->frame->linesize[0];
                }
            }
            break;

        case 129:
            av_log(avctx, AV_LOG_ERROR, "Unexpected FLI_LC chunk in non-palettized FLC\n");
            bytestream2_skip(&g2, chunk_size - 6);
            break;

        case 137:

            memset(pixels, 0x00,
                   s->frame->linesize[0] * s->avctx->height);
            break;

        case 136:
            y_ptr = 0;
            for (lines = 0; lines < s->avctx->height; lines++) {
                pixel_ptr = y_ptr;


                bytestream2_skip(&g2, 1);
                pixel_countdown = (s->avctx->width * 3);

                while (pixel_countdown > 0) {
                    if (bytestream2_tell(&g2) + 1 > stream_ptr_after_chunk)
                        break;
                    byte_run = sign_extend(bytestream2_get_byte(&g2), 8);
                    if (byte_run > 0) {
                        palette_idx1 = bytestream2_get_byte(&g2);
                        CHECK_PIXEL_PTR(byte_run);
                        for (j = 0; j < byte_run; j++) {
                            pixels[pixel_ptr++] = palette_idx1;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                av_log(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d) (linea%d)\n",
                                       pixel_countdown, lines);
                        }
                    } else {
                        byte_run = -byte_run;
                        if (bytestream2_tell(&g2) + byte_run > stream_ptr_after_chunk)
                            break;
                        CHECK_PIXEL_PTR(byte_run);
                        for (j = 0; j < byte_run; j++) {
                            palette_idx1 = bytestream2_get_byte(&g2);
                            pixels[pixel_ptr++] = palette_idx1;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                av_log(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d) at line %d\n",
                                       pixel_countdown, lines);
                        }
                    }
                }

                y_ptr += s->frame->linesize[0];
            }
            break;

        case 132:
            y_ptr = 0;
            for (lines = 0; lines < s->avctx->height; lines++) {
                pixel_ptr = y_ptr;


                bytestream2_skip(&g2, 1);
                pixel_countdown = s->avctx->width;

                while (pixel_countdown > 0) {
                    if (bytestream2_tell(&g2) + 1 > stream_ptr_after_chunk)
                        break;
                    byte_run = sign_extend(bytestream2_get_byte(&g2), 8);
                    if (byte_run > 0) {
                        pixel = bytestream2_get_le24(&g2);
                        CHECK_PIXEL_PTR(3 * byte_run);
                        for (j = 0; j < byte_run; j++) {
                            AV_WL24(pixels + pixel_ptr, pixel);
                            pixel_ptr += 3;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                av_log(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d)\n",
                                       pixel_countdown);
                        }
                    } else {
                        byte_run = -byte_run;
                        if (bytestream2_tell(&g2) + 3 * byte_run > stream_ptr_after_chunk)
                            break;
                        CHECK_PIXEL_PTR(3 * byte_run);
                        for (j = 0; j < byte_run; j++) {
                            pixel = bytestream2_get_le24(&g2);
                            AV_WL24(pixels + pixel_ptr, pixel);
                            pixel_ptr += 3;
                            pixel_countdown--;
                            if (pixel_countdown < 0)
                                av_log(avctx, AV_LOG_ERROR, "pixel_countdown < 0 (%d)\n",
                                       pixel_countdown);
                        }
                    }
                }

                y_ptr += s->frame->linesize[0];
            }
            break;

        case 134:
        case 131:

            if (chunk_size - 6 > (unsigned int)(FFALIGN(s->avctx->width, 2) * s->avctx->height)*3) {
                av_log(avctx, AV_LOG_ERROR, "In chunk FLI_COPY : source data (%d bytes) " "bigger than image, skipping chunk\n", chunk_size - 6);

                bytestream2_skip(&g2, chunk_size - 6);
            } else {
                for (y_ptr = 0; y_ptr < s->frame->linesize[0] * s->avctx->height;
                     y_ptr += s->frame->linesize[0]) {

                    bytestream2_get_buffer(&g2, pixels + y_ptr, 3*s->avctx->width);
                    if (s->avctx->width & 1)
                        bytestream2_skip(&g2, 3);
                }
            }
            break;

        case 128:

            bytestream2_skip(&g2, chunk_size - 6);
            break;

        default:
            av_log(avctx, AV_LOG_ERROR, "Unrecognized chunk type: %d\n", chunk_type);
            break;
        }

        if (stream_ptr_after_chunk - bytestream2_tell(&g2) >= 0) {
            bytestream2_skip(&g2, stream_ptr_after_chunk - bytestream2_tell(&g2));
        } else {
            av_log(avctx, AV_LOG_ERROR, "Chunk overread\n");
            break;
        }

        frame_size -= chunk_size;
        num_chunks--;
    }



    if ((bytestream2_get_bytes_left(&g2) != 0) && (bytestream2_get_bytes_left(&g2) != 1))
        av_log(avctx, AV_LOG_ERROR, "Processed FLI chunk where chunk size = %d " "and final chunk ptr = %d\n", buf_size, bytestream2_tell(&g2));


    if ((ret = av_frame_ref(data, s->frame)) < 0)
        return ret;

    *got_frame = 1;

    return buf_size;
}
