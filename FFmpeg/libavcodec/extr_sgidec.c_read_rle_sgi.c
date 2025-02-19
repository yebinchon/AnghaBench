
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int height; int depth; int width; int bytes_per_channel; int g; int linesize; } ;
typedef TYPE_1__ SgiState ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int SEEK_SET ;
 unsigned int bytestream2_get_be32 (int *) ;
 unsigned int bytestream2_get_bytes_left (int *) ;
 int bytestream2_seek (int *,unsigned int,int ) ;
 int expand_rle_row16 (TYPE_1__*,int *,int,int) ;
 int expand_rle_row8 (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static int read_rle_sgi(uint8_t *out_buf, SgiState *s)
{
    uint8_t *dest_row;
    unsigned int len = s->height * s->depth * 4;
    GetByteContext g_table = s->g;
    unsigned int y, z;
    unsigned int start_offset;
    int linesize, ret;


    if (len * 2 > bytestream2_get_bytes_left(&s->g)) {
        return AVERROR_INVALIDDATA;
    }

    for (z = 0; z < s->depth; z++) {
        dest_row = out_buf;
        for (y = 0; y < s->height; y++) {
            linesize = s->width * s->depth;
            dest_row -= s->linesize;
            start_offset = bytestream2_get_be32(&g_table);
            bytestream2_seek(&s->g, start_offset, SEEK_SET);
            if (s->bytes_per_channel == 1)
                ret = expand_rle_row8(s, dest_row + z, linesize, s->depth);
            else
                ret = expand_rle_row16(s, (uint16_t *)dest_row + z, linesize, s->depth);
            if (ret != s->width)
                return AVERROR_INVALIDDATA;
        }
    }
    return 0;
}
