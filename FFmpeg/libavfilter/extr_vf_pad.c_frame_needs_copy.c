
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* buf; } ;
typedef int PadContext ;
typedef TYPE_1__ AVFrame ;


 int av_frame_is_writable (TYPE_1__*) ;
 scalar_t__ buffer_needs_copy (int *,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int frame_needs_copy(PadContext *s, AVFrame *frame)
{
    int i;

    if (!av_frame_is_writable(frame))
        return 1;

    for (i = 0; i < 4 && frame->buf[i]; i++)
        if (buffer_needs_copy(s, frame, frame->buf[i]))
            return 1;
    return 0;
}
