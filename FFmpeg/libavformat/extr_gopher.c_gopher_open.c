
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int path ;
typedef int hostname ;
typedef int buf ;
typedef int auth ;
struct TYPE_7__ {int is_streamed; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int * hd; } ;
typedef TYPE_2__ GopherContext ;


 int AVIO_FLAG_READ_WRITE ;
 int av_url_split (int *,int ,char*,int,char*,int,int*,char*,int,char const*) ;
 int ff_url_join (char*,int,char*,int *,char*,int,int *) ;
 int ffurl_open_whitelist (int **,char*,int ,int *,int *,int ,int ,TYPE_1__*) ;
 int gopher_close (TYPE_1__*) ;
 int gopher_connect (TYPE_1__*,char*) ;

__attribute__((used)) static int gopher_open(URLContext *h, const char *uri, int flags)
{
    GopherContext *s = h->priv_data;
    char hostname[1024], auth[1024], path[1024], buf[1024];
    int port, err;

    h->is_streamed = 1;


    av_url_split(((void*)0), 0, auth, sizeof(auth), hostname, sizeof(hostname), &port,
                 path, sizeof(path), uri);

    if (port < 0)
        port = 70;

    ff_url_join(buf, sizeof(buf), "tcp", ((void*)0), hostname, port, ((void*)0));

    s->hd = ((void*)0);
    err = ffurl_open_whitelist(&s->hd, buf, AVIO_FLAG_READ_WRITE,
                               &h->interrupt_callback, ((void*)0), h->protocol_whitelist, h->protocol_blacklist, h);
    if (err < 0)
        goto fail;

    if ((err = gopher_connect(h, path)) < 0)
        goto fail;
    return 0;
 fail:
    gopher_close(h);
    return err;
}
