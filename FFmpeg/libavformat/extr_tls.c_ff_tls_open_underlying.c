
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct addrinfo {int ai_flags; int member_0; } ;
typedef int proxy_host ;
typedef int proxy_auth ;
typedef int opts ;
typedef int dest ;
typedef int buf ;
struct TYPE_7__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int listen; char* underlying_host; int numerichost; int tcp; scalar_t__ host; } ;
typedef TYPE_2__ TLSShared ;
typedef int AVDictionary ;


 int AI_NUMERICHOST ;
 int AVERROR (int ) ;
 int AVIO_FLAG_READ_WRITE ;
 int ENOMEM ;
 scalar_t__ av_find_info_tag (char*,int,char*,char const*) ;
 scalar_t__ av_strdup (char*) ;
 scalar_t__ av_strstart (char const*,char*,int *) ;
 int av_url_split (int *,int ,char*,int,char*,int,int*,int *,int ,char const*) ;
 int ff_http_match_no_proxy (char*,char*) ;
 int ff_url_join (char*,int,char*,char*,char*,int,char*,...) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int **,int ,int ,TYPE_1__*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 char* getenv (char*) ;
 int set_options (TYPE_2__*,char const*) ;
 int snprintf (char*,int,char*) ;
 char* strchr (char const*,char) ;

int ff_tls_open_underlying(TLSShared *c, URLContext *parent, const char *uri, AVDictionary **options)
{
    int port;
    const char *p;
    char buf[200], opts[50] = "";
    struct addrinfo hints = { 0 }, *ai = ((void*)0);
    const char *proxy_path;
    int use_proxy;

    set_options(c, uri);

    if (c->listen)
        snprintf(opts, sizeof(opts), "?listen=1");

    av_url_split(((void*)0), 0, ((void*)0), 0, c->underlying_host, sizeof(c->underlying_host), &port, ((void*)0), 0, uri);

    p = strchr(uri, '?');

    if (!p) {
        p = opts;
    } else {
        if (av_find_info_tag(opts, sizeof(opts), "listen", p))
            c->listen = 1;
    }

    ff_url_join(buf, sizeof(buf), "tcp", ((void*)0), c->underlying_host, port, "%s", p);

    hints.ai_flags = AI_NUMERICHOST;
    if (!getaddrinfo(c->underlying_host, ((void*)0), &hints, &ai)) {
        c->numerichost = 1;
        freeaddrinfo(ai);
    }

    if (!c->host && !(c->host = av_strdup(c->underlying_host)))
        return AVERROR(ENOMEM);

    proxy_path = getenv("http_proxy");
    use_proxy = !ff_http_match_no_proxy(getenv("no_proxy"), c->underlying_host) &&
                proxy_path && av_strstart(proxy_path, "http://", ((void*)0));

    if (use_proxy) {
        char proxy_host[200], proxy_auth[200], dest[200];
        int proxy_port;
        av_url_split(((void*)0), 0, proxy_auth, sizeof(proxy_auth),
                     proxy_host, sizeof(proxy_host), &proxy_port, ((void*)0), 0,
                     proxy_path);
        ff_url_join(dest, sizeof(dest), ((void*)0), ((void*)0), c->underlying_host, port, ((void*)0));
        ff_url_join(buf, sizeof(buf), "httpproxy", proxy_auth, proxy_host,
                    proxy_port, "/%s", dest);
    }

    return ffurl_open_whitelist(&c->tcp, buf, AVIO_FLAG_READ_WRITE,
                                &parent->interrupt_callback, options,
                                parent->protocol_whitelist, parent->protocol_blacklist, parent);
}
