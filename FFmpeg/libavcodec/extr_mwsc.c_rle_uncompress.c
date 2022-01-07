
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int PutByteContext ;
typedef int GetByteContext ;


 int SEEK_CUR ;
 int SEEK_SET ;
 unsigned int bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_le24 (int *) ;
 unsigned int bytestream2_get_le32 (int *) ;
 int bytestream2_put_le24 (int *,int) ;
 int bytestream2_seek (int *,int,int ) ;
 int bytestream2_seek_p (int *,int,int ) ;
 int bytestream2_tell_p (int *) ;

__attribute__((used)) static int rle_uncompress(GetByteContext *gb, PutByteContext *pb, GetByteContext *gbp,
                          int width, int height, int stride, int pb_linesize, int gbp_linesize)
{
    int intra = 1, w = 0;

    bytestream2_seek_p(pb, (height - 1) * pb_linesize, SEEK_SET);

    while (bytestream2_get_bytes_left(gb) > 0) {
        uint32_t fill = bytestream2_get_le24(gb);
        unsigned run = bytestream2_get_byte(gb);

        if (run == 0) {
            run = bytestream2_get_le32(gb);
            for (int j = 0; j < run; j++, w++) {
                if (w == width) {
                    w = 0;
                    bytestream2_seek_p(pb, -(pb_linesize + stride), SEEK_CUR);
                }
                bytestream2_put_le24(pb, fill);
            }
        } else if (run == 255) {
            int pos = bytestream2_tell_p(pb);

            bytestream2_seek(gbp, pos, SEEK_SET);
            for (int j = 0; j < fill; j++, w++) {
                if (w == width) {
                    w = 0;
                    bytestream2_seek_p(pb, -(pb_linesize + stride), SEEK_CUR);
                    bytestream2_seek(gbp, -(gbp_linesize + stride), SEEK_CUR);
                }
                bytestream2_put_le24(pb, bytestream2_get_le24(gbp));
            }

            intra = 0;
        } else {
            for (int j = 0; j < run; j++, w++) {
                if (w == width) {
                    w = 0;
                    bytestream2_seek_p(pb, -(pb_linesize + stride), SEEK_CUR);
                }
                bytestream2_put_le24(pb, fill);
            }
        }
    }

    return intra;
}
