
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int chained_options; scalar_t__ hd; int end_chunked_post; int inflate_buffer; int inflate_stream; } ;
typedef TYPE_2__ HTTPContext ;


 int av_dict_free (int *) ;
 int av_freep (int *) ;
 int ffurl_closep (scalar_t__*) ;
 int http_shutdown (TYPE_1__*,int ) ;
 int inflateEnd (int *) ;

__attribute__((used)) static int http_close(URLContext *h)
{
    int ret = 0;
    HTTPContext *s = h->priv_data;






    if (s->hd && !s->end_chunked_post)

        ret = http_shutdown(h, h->flags);

    if (s->hd)
        ffurl_closep(&s->hd);
    av_dict_free(&s->chained_options);
    return ret;
}
