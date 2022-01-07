
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; } ;
typedef int URLContext ;


 int AF_UNSPEC ;
 int AVERROR (int ) ;
 int EIO ;
 int SOCK_DGRAM ;
 struct addrinfo* ff_ip_resolve_host (int *,char const*,int,int ,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int memcpy (struct sockaddr_storage*,int ,int) ;

__attribute__((used)) static int udp_set_url(URLContext *h,
                       struct sockaddr_storage *addr,
                       const char *hostname, int port)
{
    struct addrinfo *res0;
    int addr_len;

    res0 = ff_ip_resolve_host(h, hostname, port, SOCK_DGRAM, AF_UNSPEC, 0);
    if (!res0) return AVERROR(EIO);
    memcpy(addr, res0->ai_addr, res0->ai_addrlen);
    addr_len = res0->ai_addrlen;
    freeaddrinfo(res0);

    return addr_len;
}
