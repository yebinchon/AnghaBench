
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fifo; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;


 int * ff_framequeue_peek (int *,size_t) ;

AVFrame *ff_inlink_peek_frame(AVFilterLink *link, size_t idx)
{
    return ff_framequeue_peek(&link->fifo, idx);
}
