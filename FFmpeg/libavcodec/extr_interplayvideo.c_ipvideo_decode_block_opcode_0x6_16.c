
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int second_last_frame; int avctx; int stream_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 char bytestream2_get_byte (int *) ;
 int copy_from (TYPE_1__*,int ,int *,char,char) ;
 int ff_tlog (int ,char*,char,char) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0x6_16(IpvideoContext *s, AVFrame *frame)
{
    signed char x, y;


    x = bytestream2_get_byte(&s->stream_ptr);
    y = bytestream2_get_byte(&s->stream_ptr);

    ff_tlog(s->avctx, "motion bytes = %d, %d\n", x, y);
    return copy_from(s, s->second_last_frame, frame, x, y);
}
