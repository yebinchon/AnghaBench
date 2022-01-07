
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int stride; int stream_ptr; scalar_t__ pixel_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int bytestream2_get_le16 (int *) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0xE_16(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    uint16_t pix;
    uint16_t *pixel_ptr = (uint16_t*)s->pixel_ptr;


    pix = bytestream2_get_le16(&s->stream_ptr);

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            pixel_ptr[x] = pix;
        pixel_ptr += s->stride;
    }


    return 0;
}
