
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_family; struct addrinfo* ai_next; } ;
typedef int socklen_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ udplite_coverage; int local_port; int dest_addr; } ;
typedef TYPE_2__ UDPContext ;


 int AF_UNSPEC ;
 int AI_PASSIVE ;
 int AV_LOG_ERROR ;
 int IPPROTO_UDPLITE ;
 int SOCK_DGRAM ;
 int closesocket (int) ;
 struct addrinfo* ff_ip_resolve_host (TYPE_1__*,char const*,int ,int ,int,int ) ;
 int ff_log_net_error (int *,int ,char*) ;
 int ff_socket (int ,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int memcpy (struct sockaddr_storage*,int ,int ) ;

__attribute__((used)) static int udp_socket_create(URLContext *h, struct sockaddr_storage *addr,
                             socklen_t *addr_len, const char *localaddr)
{
    UDPContext *s = h->priv_data;
    int udp_fd = -1;
    struct addrinfo *res0, *res;
    int family = AF_UNSPEC;

    if (((struct sockaddr *) &s->dest_addr)->sa_family)
        family = ((struct sockaddr *) &s->dest_addr)->sa_family;
    res0 = ff_ip_resolve_host(h, (localaddr && localaddr[0]) ? localaddr : ((void*)0),
                            s->local_port,
                            SOCK_DGRAM, family, AI_PASSIVE);
    if (!res0)
        goto fail;
    for (res = res0; res; res=res->ai_next) {
        if (s->udplite_coverage)
            udp_fd = ff_socket(res->ai_family, SOCK_DGRAM, IPPROTO_UDPLITE);
        else
            udp_fd = ff_socket(res->ai_family, SOCK_DGRAM, 0);
        if (udp_fd != -1) break;
        ff_log_net_error(((void*)0), AV_LOG_ERROR, "socket");
    }

    if (udp_fd < 0)
        goto fail;

    memcpy(addr, res->ai_addr, res->ai_addrlen);
    *addr_len = res->ai_addrlen;

    freeaddrinfo(res0);

    return udp_fd;

 fail:
    if (udp_fd >= 0)
        closesocket(udp_fd);
    if(res0)
        freeaddrinfo(res0);
    return -1;
}
