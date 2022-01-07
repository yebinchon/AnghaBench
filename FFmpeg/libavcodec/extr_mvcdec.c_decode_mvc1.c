
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int GetByteContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_WARNING ;
 int ROW16 (int,int,int,int,int) ;
 int av_log (int *,int ,char*) ;
 int bytestream2_get_be16u (int *) ;
 int bytestream2_get_bytes_left (int *) ;

__attribute__((used)) static int decode_mvc1(AVCodecContext *avctx, GetByteContext *gb,
                       uint8_t *dst_start, int width, int height, int linesize)
{
    uint8_t *dst;
    uint16_t v[8];
    int mask, x, y, i;

    for (y = 0; y < height; y += 4) {
        for (x = 0; x < width; x += 4) {
            if (bytestream2_get_bytes_left(gb) < 6)
                return 0;

            mask = bytestream2_get_be16u(gb);
            v[0] = bytestream2_get_be16u(gb);
            v[1] = bytestream2_get_be16u(gb);
            if ((v[0] & 0x8000)) {
                if (bytestream2_get_bytes_left(gb) < 12) {
                    av_log(avctx, AV_LOG_WARNING, "buffer overflow\n");
                    return AVERROR_INVALIDDATA;
                }
                for (i = 2; i < 8; i++)
                    v[i] = bytestream2_get_be16u(gb);
            } else {
                v[2] = v[4] = v[6] = v[0];
                v[3] = v[5] = v[7] = v[1];
            }
            dst = dst_start + (y + 0) * linesize + x * 2; i = (mask & 1 << (0 * 4)) ? 0 : 1; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (0 * 4 + 1)) ? 0 : 1; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (0 * 4 + 2)) ? 2 : 3; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (0 * 4 + 3)) ? 2 : 3; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2;;
            dst = dst_start + (y + 1) * linesize + x * 2; i = (mask & 1 << (1 * 4)) ? 0 : 1; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (1 * 4 + 1)) ? 0 : 1; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (1 * 4 + 2)) ? 2 : 3; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (1 * 4 + 3)) ? 2 : 3; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2;;
            dst = dst_start + (y + 2) * linesize + x * 2; i = (mask & 1 << (2 * 4)) ? 4 : 5; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (2 * 4 + 1)) ? 4 : 5; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (2 * 4 + 2)) ? 6 : 7; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (2 * 4 + 3)) ? 6 : 7; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2;;
            dst = dst_start + (y + 3) * linesize + x * 2; i = (mask & 1 << (3 * 4)) ? 4 : 5; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (3 * 4 + 1)) ? 4 : 5; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (3 * 4 + 2)) ? 6 : 7; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2; i = (mask & 1 << (3 * 4 + 3)) ? 6 : 7; AV_WN16A(dst, v[i] & 0x7FFF); dst += 2;;
        }
    }
    return 0;
}
