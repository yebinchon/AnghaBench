
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {scalar_t__ stride; int pixel_ptr; int stream_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int bytestream2_get_buffer (int *,int ,int) ;

__attribute__((used)) static void ipvideo_format_10_firstpass(IpvideoContext *s, AVFrame *frame, int16_t opcode)
{
    int line;

    if (!opcode) {
        for (line = 0; line < 8; ++line) {
            bytestream2_get_buffer(&s->stream_ptr, s->pixel_ptr, 8);
            s->pixel_ptr += s->stride;
        }
    }
}
