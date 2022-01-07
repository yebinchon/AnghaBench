
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int priv_data; TYPE_1__* parser; } ;
struct TYPE_6__ {int (* parser_close ) (TYPE_2__*) ;} ;
typedef TYPE_2__ AVCodecParserContext ;


 int av_free (TYPE_2__*) ;
 int av_freep (int *) ;
 int stub1 (TYPE_2__*) ;

void av_parser_close(AVCodecParserContext *s)
{
    if (s) {
        if (s->parser->parser_close)
            s->parser->parser_close(s);
        av_freep(&s->priv_data);
        av_free(s);
    }
}
