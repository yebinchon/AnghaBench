
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AVFormatContext {TYPE_1__* priv_data; } ;
struct TYPE_2__ {int xing_frame; int queue_end; int queue; } ;
typedef TYPE_1__ MP3Context ;


 int av_freep (int *) ;
 int ff_packet_list_free (int *,int *) ;

__attribute__((used)) static void mp3_deinit(struct AVFormatContext *s)
{
    MP3Context *mp3 = s->priv_data;

    ff_packet_list_free(&mp3->queue, &mp3->queue_end);
    av_freep(&mp3->xing_frame);
}
