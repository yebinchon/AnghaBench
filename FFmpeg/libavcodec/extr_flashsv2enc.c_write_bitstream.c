
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {double total_bits; } ;
typedef TYPE_1__ FlashSV2Context ;


 int encode_all_blocks (TYPE_1__*,int) ;
 int mark_all_blocks (TYPE_1__*,int const*,int,int) ;
 int write_all_blocks (TYPE_1__*,int *,int) ;
 int write_header (TYPE_1__*,int *,int) ;

__attribute__((used)) static int write_bitstream(FlashSV2Context * s, const uint8_t * src, int stride,
                           uint8_t * buf, int buf_size, int keyframe)
{
    int buf_pos, res;

    res = mark_all_blocks(s, src, stride, keyframe);
    if (res)
        return res;
    res = encode_all_blocks(s, keyframe);
    if (res)
        return res;

    res = write_header(s, buf, buf_size);
    if (res < 0) {
        return res;
    } else {
        buf_pos = res;
    }
    res = write_all_blocks(s, buf + buf_pos, buf_size - buf_pos);
    if (res < 0)
        return res;
    buf_pos += res;

    s->total_bits += ((double) buf_pos) * 8.0;


    return buf_pos;
}
