
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frames; scalar_t__ frame_count; int avctx; } ;
typedef TYPE_1__ AudioFrameQueue ;


 int AV_LOG_WARNING ;
 int av_freep (int *) ;
 int av_log (int ,int ,char*,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void ff_af_queue_close(AudioFrameQueue *afq)
{
    if(afq->frame_count)
        av_log(afq->avctx, AV_LOG_WARNING, "%d frames left in the queue on closing\n", afq->frame_count);
    av_freep(&afq->frames);
    memset(afq, 0, sizeof(*afq));
}
