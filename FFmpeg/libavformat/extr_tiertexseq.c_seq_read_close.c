
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {TYPE_1__* frame_buffers; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_2__ SeqDemuxContext ;
typedef TYPE_3__ AVFormatContext ;


 int SEQ_NUM_FRAME_BUFFERS ;
 int av_freep (int *) ;

__attribute__((used)) static int seq_read_close(AVFormatContext *s)
{
    int i;
    SeqDemuxContext *seq = s->priv_data;

    for (i = 0; i < SEQ_NUM_FRAME_BUFFERS; i++)
        av_freep(&seq->frame_buffers[i].data);

    return 0;
}
