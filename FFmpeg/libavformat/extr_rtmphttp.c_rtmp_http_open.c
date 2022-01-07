
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int url ;
typedef int headers ;
struct TYPE_8__ {scalar_t__ protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {scalar_t__ protocol_whitelist; int priv_data; } ;
struct TYPE_9__ {scalar_t__ port; char* client_id; int initialized; TYPE_5__* stream; int host; scalar_t__ tls; } ;
typedef TYPE_2__ RTMP_HTTPContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVIO_FLAG_READ_WRITE ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ RTMPTS_DEFAULT_PORT ;
 scalar_t__ RTMPT_DEFAULT_PORT ;
 scalar_t__ av_isspace (char) ;
 int av_opt_set (int ,char*,char*,int ) ;
 int av_opt_set_bin (int ,char*,char*,int,int ) ;
 scalar_t__ av_strdup (scalar_t__) ;
 int av_url_split (int *,int ,int *,int ,int ,int,scalar_t__*,int *,int ,char const*) ;
 int ff_url_join (char*,int,char*,int *,int ,scalar_t__,char*) ;
 int ffurl_alloc (TYPE_5__**,char*,int ,int *) ;
 int ffurl_connect (TYPE_5__*,int *) ;
 int ffurl_read (TYPE_5__*,char*,int) ;
 int rtmp_http_close (TYPE_1__*) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static int rtmp_http_open(URLContext *h, const char *uri, int flags)
{
    RTMP_HTTPContext *rt = h->priv_data;
    char headers[1024], url[1024];
    int ret, off = 0;

    av_url_split(((void*)0), 0, ((void*)0), 0, rt->host, sizeof(rt->host), &rt->port,
                 ((void*)0), 0, uri);
    if (rt->tls) {
        if (rt->port < 0)
            rt->port = RTMPTS_DEFAULT_PORT;
        ff_url_join(url, sizeof(url), "https", ((void*)0), rt->host, rt->port, "/open/1");
    } else {
        if (rt->port < 0)
            rt->port = RTMPT_DEFAULT_PORT;
        ff_url_join(url, sizeof(url), "http", ((void*)0), rt->host, rt->port, "/open/1");
    }


    if ((ret = ffurl_alloc(&rt->stream, url, AVIO_FLAG_READ_WRITE, &h->interrupt_callback)) < 0)
        goto fail;


    snprintf(headers, sizeof(headers),
             "Cache-Control: no-cache\r\n"
             "Content-type: application/x-fcs\r\n"
             "User-Agent: Shockwave Flash\r\n");
    av_opt_set(rt->stream->priv_data, "headers", headers, 0);
    av_opt_set(rt->stream->priv_data, "multiple_requests", "1", 0);
    av_opt_set_bin(rt->stream->priv_data, "post_data", "", 1, 0);

    if (!rt->stream->protocol_whitelist && h->protocol_whitelist) {
        rt->stream->protocol_whitelist = av_strdup(h->protocol_whitelist);
        if (!rt->stream->protocol_whitelist) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
    }


    if ((ret = ffurl_connect(rt->stream, ((void*)0))) < 0)
        goto fail;


    for (;;) {
        ret = ffurl_read(rt->stream, rt->client_id + off, sizeof(rt->client_id) - off);
        if (!ret || ret == AVERROR_EOF)
            break;
        if (ret < 0)
            goto fail;
        off += ret;
        if (off == sizeof(rt->client_id)) {
            ret = AVERROR(EIO);
            goto fail;
        }
    }
    while (off > 0 && av_isspace(rt->client_id[off - 1]))
        off--;
    rt->client_id[off] = '\0';


    rt->initialized = 1;
    return 0;

fail:
    rtmp_http_close(h);
    return ret;
}
