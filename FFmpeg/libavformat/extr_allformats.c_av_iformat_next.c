
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ AVInputFormat ;


 scalar_t__ av_demuxer_iterate (void**) ;
 int av_format_init_next ;
 int av_format_next_init ;
 int ff_thread_once (int *,int ) ;

AVInputFormat *av_iformat_next(const AVInputFormat *f)
{
    ff_thread_once(&av_format_next_init, av_format_init_next);

    if (f)



        return (AVInputFormat *) f->next;

    else {
        void *opaque = ((void*)0);
        return (AVInputFormat *)av_demuxer_iterate(&opaque);
    }
}
