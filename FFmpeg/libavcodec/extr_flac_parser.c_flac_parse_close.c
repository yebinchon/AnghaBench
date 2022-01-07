
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {int wrap_buf; int fifo_buf; TYPE_2__* headers; } ;
typedef TYPE_1__ FLACParseContext ;
typedef TYPE_2__ FLACHeaderMarker ;
typedef TYPE_3__ AVCodecParserContext ;


 int av_fifo_freep (int *) ;
 int av_free (TYPE_2__*) ;
 int av_freep (int *) ;

__attribute__((used)) static void flac_parse_close(AVCodecParserContext *c)
{
    FLACParseContext *fpc = c->priv_data;
    FLACHeaderMarker *curr = fpc->headers, *temp;

    while (curr) {
        temp = curr->next;
        av_free(curr);
        curr = temp;
    }
    fpc->headers = ((void*)0);
    av_fifo_freep(&fpc->fifo_buf);
    av_freep(&fpc->wrap_buf);
}
