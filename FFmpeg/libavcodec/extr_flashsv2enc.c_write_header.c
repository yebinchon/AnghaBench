
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int block_width; int image_width; int block_height; int image_height; int flags; } ;
typedef int PutBitContext ;
typedef TYPE_1__ FlashSV2Context ;


 int HAS_PALLET_INFO ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int*,int) ;
 int put_bits (int *,int,int) ;
 int write_palette (TYPE_1__*,int*,int) ;

__attribute__((used)) static int write_header(FlashSV2Context * s, uint8_t * buf, int buf_size)
{
    PutBitContext pb;
    int buf_pos, len;

    if (buf_size < 5)
        return -1;

    init_put_bits(&pb, buf, buf_size);

    put_bits(&pb, 4, (s->block_width >> 4) - 1);
    put_bits(&pb, 12, s->image_width);
    put_bits(&pb, 4, (s->block_height >> 4) - 1);
    put_bits(&pb, 12, s->image_height);

    flush_put_bits(&pb);
    buf_pos = 4;

    buf[buf_pos++] = s->flags;

    if (s->flags & HAS_PALLET_INFO) {
        len = write_palette(s, buf + buf_pos, buf_size - buf_pos);
        if (len < 0)
            return -1;
        buf_pos += len;
    }

    return buf_pos;
}
