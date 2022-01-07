
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int second_last_frame; int avctx; int mv_ptr; int stream_ptr; int is_16bpp; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 unsigned char bytestream2_get_byte (int *) ;
 int copy_from (TYPE_1__*,int ,int *,int,int) ;
 int ff_tlog (int ,char*,unsigned char,int,int) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0x2(IpvideoContext *s, AVFrame *frame)
{
    unsigned char B;
    int x, y;


    if (!s->is_16bpp) {
        B = bytestream2_get_byte(&s->stream_ptr);
    } else {
        B = bytestream2_get_byte(&s->mv_ptr);
    }

    if (B < 56) {
        x = 8 + (B % 7);
        y = B / 7;
    } else {
        x = -14 + ((B - 56) % 29);
        y = 8 + ((B - 56) / 29);
    }

    ff_tlog(s->avctx, "motion byte = %d, (x, y) = (%d, %d)\n", B, x, y);
    return copy_from(s, s->second_last_frame, frame, x, y);
}
