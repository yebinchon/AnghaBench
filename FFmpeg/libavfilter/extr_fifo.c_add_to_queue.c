
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * frame; struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_1__* dst; } ;
struct TYPE_7__ {TYPE_4__* last; } ;
struct TYPE_6__ {TYPE_2__* priv; } ;
typedef TYPE_2__ FifoContext ;
typedef int Buf ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_free (int **) ;
 TYPE_4__* av_mallocz (int) ;

__attribute__((used)) static int add_to_queue(AVFilterLink *inlink, AVFrame *frame)
{
    FifoContext *s = inlink->dst->priv;

    s->last->next = av_mallocz(sizeof(Buf));
    if (!s->last->next) {
        av_frame_free(&frame);
        return AVERROR(ENOMEM);
    }

    s->last = s->last->next;
    s->last->frame = frame;

    return 0;
}
