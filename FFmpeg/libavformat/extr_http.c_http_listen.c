
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int proto ;
typedef int lower_url ;
typedef int hostname ;
struct TYPE_6__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ listen; int reply_code; int chained_options; int handshake_step; int hd; } ;
typedef TYPE_2__ HTTPContext ;
typedef int AVDictionary ;


 int AVIO_FLAG_READ_WRITE ;
 scalar_t__ HTTP_SINGLE ;
 int LOWER_PROTO ;
 int av_dict_free (int *) ;
 int av_dict_set_int (int **,char*,scalar_t__,int ) ;
 int av_url_split (char*,int,int *,int ,char*,int,int*,int *,int ,char const*) ;
 int ff_url_join (char*,int,char const*,int *,char*,int,int *) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int **,int ,int ,TYPE_1__*) ;
 int http_handshake (TYPE_1__*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int http_listen(URLContext *h, const char *uri, int flags,
                       AVDictionary **options) {
    HTTPContext *s = h->priv_data;
    int ret;
    char hostname[1024], proto[10];
    char lower_url[100];
    const char *lower_proto = "tcp";
    int port;
    av_url_split(proto, sizeof(proto), ((void*)0), 0, hostname, sizeof(hostname), &port,
                 ((void*)0), 0, uri);
    if (!strcmp(proto, "https"))
        lower_proto = "tls";
    ff_url_join(lower_url, sizeof(lower_url), lower_proto, ((void*)0), hostname, port,
                ((void*)0));
    if ((ret = av_dict_set_int(options, "listen", s->listen, 0)) < 0)
        goto fail;
    if ((ret = ffurl_open_whitelist(&s->hd, lower_url, AVIO_FLAG_READ_WRITE,
                                    &h->interrupt_callback, options,
                                    h->protocol_whitelist, h->protocol_blacklist, h
                                   )) < 0)
        goto fail;
    s->handshake_step = LOWER_PROTO;
    if (s->listen == HTTP_SINGLE) {
        s->reply_code = 200;
        while ((ret = http_handshake(h)) > 0);
    }
fail:
    av_dict_free(&s->chained_options);
    return ret;
}
