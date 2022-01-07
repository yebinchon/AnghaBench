
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ AVCodecParser ;


 int av_parser_init_next ;
 int av_parser_next_init ;
 int ff_thread_once (int *,int ) ;
 scalar_t__* parser_list ;

AVCodecParser *av_parser_next(const AVCodecParser *p)
{
    ff_thread_once(&av_parser_next_init, av_parser_init_next);

    if (p)
        return p->next;
    else
        return (AVCodecParser*)parser_list[0];
}
