
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_extended_buf; scalar_t__* extended_buf; scalar_t__* buf; } ;
typedef TYPE_1__ AVFrame ;


 int FF_ARRAY_ELEMS (scalar_t__*) ;
 int av_buffer_is_writable (scalar_t__) ;

int av_frame_is_writable(AVFrame *frame)
{
    int i, ret = 1;


    if (!frame->buf[0])
        return 0;

    for (i = 0; i < FF_ARRAY_ELEMS(frame->buf); i++)
        if (frame->buf[i])
            ret &= !!av_buffer_is_writable(frame->buf[i]);
    for (i = 0; i < frame->nb_extended_buf; i++)
        ret &= !!av_buffer_is_writable(frame->extended_buf[i]);

    return ret;
}
