
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_6__ {int frame_size; int frame; int pb; int g2; int gb; } ;
typedef int PutByteContext ;
typedef int GetByteContext ;
typedef TYPE_1__ GDVContext ;
typedef TYPE_2__ Bits8 ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 unsigned int PREAMBLE_SIZE ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 scalar_t__ bytestream2_get_bytes_left_p (int *) ;
 int bytestream2_get_le16 (int *) ;
 int bytestream2_init (int *,int ,int ) ;
 int bytestream2_put_byte (int *,int) ;
 int bytestream2_skip_p (int *,int) ;
 int lz_copy (int *,int *,int,int) ;
 int read_bits2 (TYPE_2__*,int *) ;

__attribute__((used)) static int decompress_5(AVCodecContext *avctx, unsigned skip)
{
    GDVContext *gdv = avctx->priv_data;
    GetByteContext *gb = &gdv->gb;
    GetByteContext *g2 = &gdv->g2;
    PutByteContext *pb = &gdv->pb;
    Bits8 bits = { 0 };

    bytestream2_init(g2, gdv->frame, gdv->frame_size);
    bytestream2_skip_p(pb, skip + PREAMBLE_SIZE);

    while (bytestream2_get_bytes_left_p(pb) > 0 && bytestream2_get_bytes_left(gb) > 0) {
        int tag = read_bits2(&bits, gb);
        if (bytestream2_get_bytes_left(gb) < 1)
            return AVERROR_INVALIDDATA;
        if (tag == 0) {
            bytestream2_put_byte(pb, bytestream2_get_byte(gb));
        } else if (tag == 1) {
            int b = bytestream2_get_byte(gb);
            int len = (b & 0xF) + 3;
            int top = b >> 4;
            int off = (bytestream2_get_byte(gb) << 4) + top - 4096;
            lz_copy(pb, g2, off, len);
        } else if (tag == 2) {
            int len;
            int b = bytestream2_get_byte(gb);
            if (b == 0) {
                return 0;
            }
            if (b != 0xFF) {
                len = b;
            } else {
                len = bytestream2_get_le16(gb);
            }
            bytestream2_skip_p(pb, len + 1);
        } else {
            int b = bytestream2_get_byte(gb);
            int len = (b & 0x3) + 2;
            int off = -(b >> 2) - 1;
            lz_copy(pb, g2, off, len);
        }
    }
    if (bytestream2_get_bytes_left_p(pb) > 0)
        return AVERROR_INVALIDDATA;
    return 0;
}
