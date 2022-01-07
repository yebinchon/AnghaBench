
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* src; } ;
struct TYPE_6__ {scalar_t__ eof; int fifo; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ BufferSourceContext ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR_EOF ;
 int av_fifo_size (int ) ;

__attribute__((used)) static int poll_frame(AVFilterLink *link)
{
    BufferSourceContext *c = link->src->priv;
    int size = av_fifo_size(c->fifo);
    if (!size && c->eof)
        return AVERROR_EOF;
    return size/sizeof(AVFrame*);
}
