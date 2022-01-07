
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_bufferu (int *,int *,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int rle_decode(SANMVideoContext *ctx, uint8_t *dst, const int out_size)
{
    int opcode, color, run_len, left = out_size;

    while (left > 0) {
        opcode = bytestream2_get_byte(&ctx->gb);
        run_len = (opcode >> 1) + 1;
        if (run_len > left || bytestream2_get_bytes_left(&ctx->gb) <= 0)
            return AVERROR_INVALIDDATA;

        if (opcode & 1) {
            color = bytestream2_get_byte(&ctx->gb);
            memset(dst, color, run_len);
        } else {
            if (bytestream2_get_bytes_left(&ctx->gb) < run_len)
                return AVERROR_INVALIDDATA;
            bytestream2_get_bufferu(&ctx->gb, dst, run_len);
        }

        dst += run_len;
        left -= run_len;
    }

    return 0;
}
