
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uri ;
typedef int uint8_t ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int priv_data; } ;
struct TYPE_7__ {scalar_t__ nb_bytes_read; TYPE_4__* stream; scalar_t__ out_size; int out_data; int seq; int client_id; int port; int host; } ;
typedef TYPE_2__ RTMP_HTTPContext ;


 int av_opt_set_bin (int ,char*,int ,scalar_t__,int ) ;
 int ff_http_do_new_request (TYPE_4__*,char*) ;
 int ff_url_join (char*,int,char*,int *,int ,int ,char*,char const*,int ,int ) ;
 int ffurl_read (TYPE_4__*,int *,int) ;

__attribute__((used)) static int rtmp_http_send_cmd(URLContext *h, const char *cmd)
{
    RTMP_HTTPContext *rt = h->priv_data;
    char uri[2048];
    uint8_t c;
    int ret;

    ff_url_join(uri, sizeof(uri), "http", ((void*)0), rt->host, rt->port,
                "/%s/%s/%d", cmd, rt->client_id, rt->seq++);

    av_opt_set_bin(rt->stream->priv_data, "post_data", rt->out_data,
                   rt->out_size, 0);


    if ((ret = ff_http_do_new_request(rt->stream, uri)) < 0)
        return ret;


    rt->out_size = 0;


    if ((ret = ffurl_read(rt->stream, &c, 1)) < 0)
        return ret;


    rt->nb_bytes_read = 0;

    return ret;
}
