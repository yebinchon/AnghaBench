
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* keyframe_pts; } ;
struct TYPE_7__ {int nb_streams; TYPE_1__* priv_data; } ;
struct TYPE_6__ {TYPE_5__* time_base; TYPE_5__* chapter; TYPE_5__* stream; } ;
typedef TYPE_1__ NUTContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (TYPE_5__**) ;
 int ff_nut_free_sp (TYPE_1__*) ;

__attribute__((used)) static void nut_write_deinit(AVFormatContext *s)
{
    NUTContext *nut = s->priv_data;
    int i;

    ff_nut_free_sp(nut);
    if (nut->stream)
        for (i=0; i<s->nb_streams; i++)
            av_freep(&nut->stream[i].keyframe_pts);

    av_freep(&nut->stream);
    av_freep(&nut->chapter);
    av_freep(&nut->time_base);
}
