
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * extended_data; } ;
typedef TYPE_1__ AVFrame ;


 TYPE_1__* av_mallocz (int) ;
 int get_frame_defaults (TYPE_1__*) ;

AVFrame *av_frame_alloc(void)
{
    AVFrame *frame = av_mallocz(sizeof(*frame));

    if (!frame)
        return ((void*)0);

    frame->extended_data = ((void*)0);
    get_frame_defaults(frame);

    return frame;
}
