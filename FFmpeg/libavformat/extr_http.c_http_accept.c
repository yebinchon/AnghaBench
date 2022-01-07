
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* priv_data; int interrupt_callback; int flags; int filename; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {int is_multi_client; TYPE_1__* hd; int listen; } ;
typedef TYPE_2__ HTTPContext ;


 int av_assert0 (int ) ;
 int ffurl_accept (TYPE_1__*,TYPE_1__**) ;
 int ffurl_alloc (TYPE_1__**,int ,int ,int *) ;
 int ffurl_closep (TYPE_1__**) ;

__attribute__((used)) static int http_accept(URLContext *s, URLContext **c)
{
    int ret;
    HTTPContext *sc = s->priv_data;
    HTTPContext *cc;
    URLContext *sl = sc->hd;
    URLContext *cl = ((void*)0);

    av_assert0(sc->listen);
    if ((ret = ffurl_alloc(c, s->filename, s->flags, &sl->interrupt_callback)) < 0)
        goto fail;
    cc = (*c)->priv_data;
    if ((ret = ffurl_accept(sl, &cl)) < 0)
        goto fail;
    cc->hd = cl;
    cc->is_multi_client = 1;
    return 0;
fail:
    if (c) {
        ffurl_closep(c);
    }
    return ret;
}
