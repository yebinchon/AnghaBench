
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stride; int pixel_ptr; int stream_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 unsigned char bytestream2_get_byte (int *) ;
 int memset (int ,unsigned char,int) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0xE(IpvideoContext *s, AVFrame *frame)
{
    int y;
    unsigned char pix;


    pix = bytestream2_get_byte(&s->stream_ptr);

    for (y = 0; y < 8; y++) {
        memset(s->pixel_ptr, pix, 8);
        s->pixel_ptr += s->stride;
    }


    return 0;
}
