
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stride; scalar_t__ pixel_ptr; int stream_ptr; int avctx; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 unsigned char bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int memset (scalar_t__,unsigned char,int) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0xD(IpvideoContext *s, AVFrame *frame)
{
    int y;
    unsigned char P[2];

    if (bytestream2_get_bytes_left(&s->stream_ptr) < 4) {
        av_log(s->avctx, AV_LOG_ERROR, "too little data for opcode 0xD\n");
        return AVERROR_INVALIDDATA;
    }


    for (y = 0; y < 8; y++) {
        if (!(y & 3)) {
            P[0] = bytestream2_get_byte(&s->stream_ptr);
            P[1] = bytestream2_get_byte(&s->stream_ptr);
        }
        memset(s->pixel_ptr, P[0], 4);
        memset(s->pixel_ptr + 4, P[1], 4);
        s->pixel_ptr += s->stride;
    }


    return 0;
}
