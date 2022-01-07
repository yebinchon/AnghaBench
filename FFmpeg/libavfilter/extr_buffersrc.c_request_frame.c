
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int frame ;
struct TYPE_8__ {TYPE_1__* src; } ;
struct TYPE_7__ {int fifo; int nb_failed_requests; scalar_t__ eof; } ;
struct TYPE_6__ {TYPE_2__* priv; } ;
typedef TYPE_2__ BufferSourceContext ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int av_fifo_generic_read (int ,int **,int,int *) ;
 int av_fifo_size (int ) ;
 int ff_filter_frame (TYPE_3__*,int *) ;

__attribute__((used)) static int request_frame(AVFilterLink *link)
{
    BufferSourceContext *c = link->src->priv;
    AVFrame *frame;
    int ret;

    if (!av_fifo_size(c->fifo)) {
        if (c->eof)
            return AVERROR_EOF;
        c->nb_failed_requests++;
        return AVERROR(EAGAIN);
    }
    av_fifo_generic_read(c->fifo, &frame, sizeof(frame), ((void*)0));

    ret = ff_filter_frame(link, frame);

    return ret;
}
