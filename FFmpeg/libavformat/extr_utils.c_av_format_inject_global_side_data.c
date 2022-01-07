
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nb_streams; TYPE_2__** streams; TYPE_1__* internal; } ;
struct TYPE_6__ {int inject_global_side_data; } ;
struct TYPE_5__ {int inject_global_side_data; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;



void av_format_inject_global_side_data(AVFormatContext *s)
{
    int i;
    s->internal->inject_global_side_data = 1;
    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        st->inject_global_side_data = 1;
    }
}
