
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stride; int * pixel_ptr; int stream_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int bytestream2_get_byte (int *) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0xC(IpvideoContext *s, AVFrame *frame)
{
    int x, y;


    for (y = 0; y < 8; y += 2) {
        for (x = 0; x < 8; x += 2) {
            s->pixel_ptr[x ] =
            s->pixel_ptr[x + 1 ] =
            s->pixel_ptr[x + s->stride] =
            s->pixel_ptr[x + 1 + s->stride] = bytestream2_get_byte(&s->stream_ptr);
        }
        s->pixel_ptr += s->stride * 2;
    }


    return 0;
}
