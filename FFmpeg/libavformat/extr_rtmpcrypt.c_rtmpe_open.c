
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int url ;
typedef int host ;
struct TYPE_6__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int stream; scalar_t__ tunneling; } ;
typedef TYPE_2__ RTMPEContext ;


 int AVIO_FLAG_READ_WRITE ;
 int av_url_split (int *,int ,int *,int ,char*,int,int*,int *,int ,char const*) ;
 int ff_url_join (char*,int,char*,int *,char*,int,int *) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int *,int ,int ,TYPE_1__*) ;
 int rtmpe_close (TYPE_1__*) ;

__attribute__((used)) static int rtmpe_open(URLContext *h, const char *uri, int flags)
{
    RTMPEContext *rt = h->priv_data;
    char host[256], url[1024];
    int ret, port;

    av_url_split(((void*)0), 0, ((void*)0), 0, host, sizeof(host), &port, ((void*)0), 0, uri);

    if (rt->tunneling) {
        if (port < 0)
            port = 80;
        ff_url_join(url, sizeof(url), "ffrtmphttp", ((void*)0), host, port, ((void*)0));
    } else {
        if (port < 0)
            port = 1935;
        ff_url_join(url, sizeof(url), "tcp", ((void*)0), host, port, ((void*)0));
    }


    if ((ret = ffurl_open_whitelist(&rt->stream, url, AVIO_FLAG_READ_WRITE,
                                    &h->interrupt_callback, ((void*)0),
                                    h->protocol_whitelist, h->protocol_blacklist, h)) < 0) {
        rtmpe_close(h);
        return ret;
    }

    return 0;
}
