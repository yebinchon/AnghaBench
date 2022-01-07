
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int PutByteContext ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int AV_WN16 (int*,int ) ;
 int PAIR (int,int) ;
 int SEEK_SET ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 scalar_t__ bytestream2_get_bytes_left_p (int *) ;
 scalar_t__ bytestream2_get_eof (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_peek_le16 (int *) ;
 int bytestream2_put_le16 (int *,int) ;
 int bytestream2_put_le32 (int *,int) ;
 int bytestream2_seek (int *,int,int ) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;

__attribute__((used)) static int decompress(GetByteContext *gb, int size, PutByteContext *pb, const uint32_t *lut)
{
    int pos, idx, cnt, fill;
    uint32_t a, b, c;

    bytestream2_skip(gb, 32);
    cnt = 4;
    a = bytestream2_get_le32(gb);
    idx = a >> 20;
    b = lut[2 * idx];

    while (1) {
        if (bytestream2_get_bytes_left_p(pb) <= 0 || bytestream2_get_eof(pb))
            return 0;
        if ((b & 0xFF00u) != 0x8000u || (b & 0xFFu)) {
            if ((b & 0xFF00u) != 0x8000u) {
                bytestream2_put_le16(pb, b);
            } else {
                idx = 0;
                for (int i = 0; i < (b & 0xFFu); i++)
                    bytestream2_put_le32(pb, 0);
            }
            c = b >> 16;
            if (c & 0xFF00u) {
                fill = lut[2 * idx + 1];
                if ((c & 0xF000u) == 0x1000) {
                    bytestream2_put_le16(pb, fill);
                } else {
                    bytestream2_put_le32(pb, fill);
                }
                c = (c >> 8) & 0x0Fu;
            }
            while (c) {
                a <<= 4;
                cnt--;
                if (!cnt) {
                    if (bytestream2_get_bytes_left(gb) <= 0) {
                        if (!a)
                            return 0;
                    } else {
                        pos = bytestream2_tell(gb);
                        bytestream2_seek(gb, pos ^ 2, SEEK_SET);
                        AV_WN16(&a, bytestream2_peek_le16(gb));
                        bytestream2_seek(gb, pos + 2, SEEK_SET);
                    }
                    cnt = 4;
                }
                c--;
            }
            idx = a >> 20;
            b = lut[2 * idx];
            if (!b)
                return AVERROR_INVALIDDATA;
            continue;
        }
        idx = 2;
        while (idx) {
            a <<= 4;
            cnt--;
            if (cnt) {
                idx--;
                continue;
            }
            if (bytestream2_get_bytes_left(gb) <= 0) {
                if (a) {
                    cnt = 4;
                    idx--;
                    continue;
                }
                return 0;
            }
            pos = bytestream2_tell(gb);
            bytestream2_seek(gb, pos ^ 2, SEEK_SET);
            AV_WN16(&a, bytestream2_peek_le16(gb));
            bytestream2_seek(gb, pos + 2, SEEK_SET);
            cnt = 4;
            idx--;
        }
        b = PAIR(4, a) >> 16;
    }

    return 0;
}
