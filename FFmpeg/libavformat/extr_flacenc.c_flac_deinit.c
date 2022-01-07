
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AVFormatContext {TYPE_1__* priv_data; } ;
struct TYPE_2__ {int streaminfo; int queue_end; int queue; } ;
typedef TYPE_1__ FlacMuxerContext ;


 int av_freep (int *) ;
 int ff_packet_list_free (int *,int *) ;

__attribute__((used)) static void flac_deinit(struct AVFormatContext *s)
{
    FlacMuxerContext *c = s->priv_data;

    ff_packet_list_free(&c->queue, &c->queue_end);
    av_freep(&c->streaminfo);
}
