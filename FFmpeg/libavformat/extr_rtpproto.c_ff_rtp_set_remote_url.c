
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int path ;
typedef int hostname ;
typedef int buf ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int rtcp_hd; int rtp_hd; } ;
typedef TYPE_2__ RTPContext ;


 scalar_t__ av_find_info_tag (char*,int,char*,char const*) ;
 int av_url_split (int *,int ,int *,int ,char*,int,int*,char*,int,char const*) ;
 int ff_udp_set_remote_url (int ,char*) ;
 int ff_url_join (char*,int,char*,int *,char*,int,char*,char*) ;
 char* strchr (char const*,char) ;
 int strtol (char*,int *,int) ;

int ff_rtp_set_remote_url(URLContext *h, const char *uri)
{
    RTPContext *s = h->priv_data;
    char hostname[256];
    int port, rtcp_port;
    const char *p;

    char buf[1024];
    char path[1024];

    av_url_split(((void*)0), 0, ((void*)0), 0, hostname, sizeof(hostname), &port,
                 path, sizeof(path), uri);
    rtcp_port = port + 1;

    p = strchr(uri, '?');
    if (p) {
        if (av_find_info_tag(buf, sizeof(buf), "rtcpport", p)) {
            rtcp_port = strtol(buf, ((void*)0), 10);
        }
    }

    ff_url_join(buf, sizeof(buf), "udp", ((void*)0), hostname, port, "%s", path);
    ff_udp_set_remote_url(s->rtp_hd, buf);

    ff_url_join(buf, sizeof(buf), "udp", ((void*)0), hostname, rtcp_port, "%s", path);
    ff_udp_set_remote_url(s->rtcp_hd, buf);
    return 0;
}
