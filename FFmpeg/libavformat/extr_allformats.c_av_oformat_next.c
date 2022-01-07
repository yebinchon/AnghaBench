
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ AVOutputFormat ;


 int av_format_init_next ;
 int av_format_next_init ;
 scalar_t__ av_muxer_iterate (void**) ;
 int ff_thread_once (int *,int ) ;

AVOutputFormat *av_oformat_next(const AVOutputFormat *f)
{
    ff_thread_once(&av_format_next_init, av_format_init_next);

    if (f)



        return (AVOutputFormat *) f->next;

    else {
        void *opaque = ((void*)0);
        return (AVOutputFormat *)av_muxer_iterate(&opaque);
    }
}
