
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_frame; int avctx; int mv_ptr; int stream_ptr; int is_16bpp; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 unsigned char bytestream2_get_byte (int *) ;
 int copy_from (TYPE_1__*,int ,int *,int,int) ;
 int ff_tlog (int ,char*,unsigned char,int,int) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0x4(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    unsigned char B, BL, BH;


    if (!s->is_16bpp) {
        B = bytestream2_get_byte(&s->stream_ptr);
    } else {
        B = bytestream2_get_byte(&s->mv_ptr);
    }

    BL = B & 0x0F;
    BH = (B >> 4) & 0x0F;
    x = -8 + BL;
    y = -8 + BH;

    ff_tlog(s->avctx, "motion byte = %d, (x, y) = (%d, %d)\n", B, x, y);
    return copy_from(s, s->last_frame, frame, x, y);
}
