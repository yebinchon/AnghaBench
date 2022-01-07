
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_close; int io_open; int * av_class; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_format_context_class ;
 int av_opt_set_defaults (TYPE_1__*) ;
 int io_close_default ;
 int io_open_default ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void avformat_get_context_defaults(AVFormatContext *s)
{
    memset(s, 0, sizeof(AVFormatContext));

    s->av_class = &av_format_context_class;

    s->io_open = io_open_default;
    s->io_close = io_close_default;

    av_opt_set_defaults(s);
}
