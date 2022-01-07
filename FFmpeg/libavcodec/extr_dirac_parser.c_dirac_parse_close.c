
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ buffer_size; int buffer; } ;
typedef TYPE_1__ DiracParseContext ;
typedef TYPE_2__ AVCodecParserContext ;


 int av_freep (int *) ;

__attribute__((used)) static void dirac_parse_close(AVCodecParserContext *s)
{
    DiracParseContext *pc = s->priv_data;

    if (pc->buffer_size > 0)
        av_freep(&pc->buffer);
}
