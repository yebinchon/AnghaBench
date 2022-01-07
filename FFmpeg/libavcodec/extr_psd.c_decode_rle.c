
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int int8_t ;
struct TYPE_3__ {unsigned int height; unsigned int channel_count; unsigned int line_size; unsigned long uncompressed_size; void** tmp; int gb; int avctx; } ;
typedef TYPE_1__ PSDContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 void* bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_skip (int *,unsigned int) ;

__attribute__((used)) static int decode_rle(PSDContext * s){
    unsigned int scanline_count;
    unsigned int sl, count;
    unsigned long target_index = 0;
    unsigned int p;
    int8_t rle_char;
    unsigned int repeat_count;
    uint8_t v;

    scanline_count = s->height * s->channel_count;


    if (bytestream2_get_bytes_left(&s->gb) < scanline_count * 2) {
        av_log(s->avctx, AV_LOG_ERROR, "Not enough data for rle scanline table.\n");
        return AVERROR_INVALIDDATA;
    }
    bytestream2_skip(&s->gb, scanline_count * 2);


    for (sl = 0; sl < scanline_count; sl++) {
        count = 0;

        while (count < s->line_size) {
            rle_char = bytestream2_get_byte(&s->gb);

            if (rle_char <= 0) {
                repeat_count = rle_char * -1;

                if (bytestream2_get_bytes_left(&s->gb) < 1) {
                    av_log(s->avctx, AV_LOG_ERROR, "Not enough data for rle scanline.\n");
                    return AVERROR_INVALIDDATA;
                }

                if (target_index + repeat_count >= s->uncompressed_size) {
                    av_log(s->avctx, AV_LOG_ERROR, "Invalid rle char.\n");
                    return AVERROR_INVALIDDATA;
                }

                v = bytestream2_get_byte(&s->gb);
                for (p = 0; p <= repeat_count; p++) {
                    s->tmp[target_index++] = v;
                }
                count += repeat_count + 1;
            } else {
                if (bytestream2_get_bytes_left(&s->gb) < rle_char) {
                    av_log(s->avctx, AV_LOG_ERROR, "Not enough data for rle scanline.\n");
                    return AVERROR_INVALIDDATA;
                }

                if (target_index + rle_char >= s->uncompressed_size) {
                    av_log(s->avctx, AV_LOG_ERROR, "Invalid rle char.\n");
                    return AVERROR_INVALIDDATA;
                }

                for (p = 0; p <= rle_char; p++) {
                    v = bytestream2_get_byte(&s->gb);
                    s->tmp[target_index++] = v;
                }
                count += rle_char + 1;
            }
        }
    }

    return 0;
}
