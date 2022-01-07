
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv_data; int interrupt_callback; int flags; int filename; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {int fd; int listen_timeout; int listen; } ;
typedef TYPE_2__ TCPContext ;


 int av_assert0 (int ) ;
 int ff_accept (int,int ,TYPE_1__*) ;
 int ffurl_alloc (TYPE_1__**,int ,int ,int *) ;
 int ffurl_closep (TYPE_1__**) ;

__attribute__((used)) static int tcp_accept(URLContext *s, URLContext **c)
{
    TCPContext *sc = s->priv_data;
    TCPContext *cc;
    int ret;
    av_assert0(sc->listen);
    if ((ret = ffurl_alloc(c, s->filename, s->flags, &s->interrupt_callback)) < 0)
        return ret;
    cc = (*c)->priv_data;
    ret = ff_accept(sc->fd, sc->listen_timeout, s);
    if (ret < 0) {
        ffurl_closep(c);
        return ret;
    }
    cc->fd = ret;
    return 0;
}
