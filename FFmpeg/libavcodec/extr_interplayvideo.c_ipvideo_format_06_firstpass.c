
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int second_last_frame; TYPE_1__* avctx; scalar_t__ stride; int pixel_ptr; int stream_ptr; } ;
struct TYPE_5__ {int frame_number; } ;
typedef TYPE_2__ IpvideoContext ;
typedef int AVFrame ;


 int bytestream2_get_buffer (int *,int ,int) ;
 int copy_from (TYPE_2__*,int ,int *,int ,int ) ;

__attribute__((used)) static void ipvideo_format_06_firstpass(IpvideoContext *s, AVFrame *frame, int16_t opcode)
{
    int line;

    if (!opcode) {
        for (line = 0; line < 8; ++line) {
            bytestream2_get_buffer(&s->stream_ptr, s->pixel_ptr, 8);
            s->pixel_ptr += s->stride;
        }
    } else {

        if (s->avctx->frame_number > 2)
            copy_from(s, s->second_last_frame, frame, 0, 0);
    }
}
