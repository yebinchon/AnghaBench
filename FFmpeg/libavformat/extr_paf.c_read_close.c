
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int temp_audio_frame; int audio_frame; int video_frame; int blocks_offset_table; int frames_offset_table; int blocks_count_table; } ;
typedef TYPE_1__ PAFDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int read_close(AVFormatContext *s)
{
    PAFDemuxContext *p = s->priv_data;

    av_freep(&p->blocks_count_table);
    av_freep(&p->frames_offset_table);
    av_freep(&p->blocks_offset_table);
    av_freep(&p->video_frame);
    av_freep(&p->audio_frame);
    av_freep(&p->temp_audio_frame);

    return 0;
}
