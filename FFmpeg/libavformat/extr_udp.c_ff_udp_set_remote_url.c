
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int hostname ;
typedef int buf ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ dest_addr_len; int is_connected; int dest_addr; int udp_fd; int is_multicast; } ;
typedef TYPE_2__ UDPContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 scalar_t__ av_find_info_tag (char*,int,char*,char const*) ;
 int av_url_split (int *,int ,int *,int ,char*,int,int*,int *,int ,char const*) ;
 scalar_t__ connect (int ,struct sockaddr*,scalar_t__) ;
 int ff_is_multicast_address (struct sockaddr*) ;
 int ff_log_net_error (TYPE_1__*,int ,char*) ;
 char* strchr (char const*,char) ;
 int strtol (char*,int *,int) ;
 scalar_t__ udp_set_url (TYPE_1__*,int *,char*,int) ;

int ff_udp_set_remote_url(URLContext *h, const char *uri)
{
    UDPContext *s = h->priv_data;
    char hostname[256], buf[10];
    int port;
    const char *p;

    av_url_split(((void*)0), 0, ((void*)0), 0, hostname, sizeof(hostname), &port, ((void*)0), 0, uri);


    s->dest_addr_len = udp_set_url(h, &s->dest_addr, hostname, port);
    if (s->dest_addr_len < 0) {
        return AVERROR(EIO);
    }
    s->is_multicast = ff_is_multicast_address((struct sockaddr*) &s->dest_addr);
    p = strchr(uri, '?');
    if (p) {
        if (av_find_info_tag(buf, sizeof(buf), "connect", p)) {
            int was_connected = s->is_connected;
            s->is_connected = strtol(buf, ((void*)0), 10);
            if (s->is_connected && !was_connected) {
                if (connect(s->udp_fd, (struct sockaddr *) &s->dest_addr,
                            s->dest_addr_len)) {
                    s->is_connected = 0;
                    ff_log_net_error(h, AV_LOG_ERROR, "connect");
                    return AVERROR(EIO);
                }
            }
        }
    }

    return 0;
}
