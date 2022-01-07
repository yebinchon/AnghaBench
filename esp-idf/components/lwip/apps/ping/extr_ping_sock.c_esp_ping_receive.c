
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ip_hdr {int _ttl; } ;
struct icmp_echo_hdr {scalar_t__ id; scalar_t__ seqno; } ;
typedef int socklen_t ;
typedef int from ;
struct TYPE_5__ {int ttl; int received; TYPE_1__* packet_hdr; int recv_addr; scalar_t__ recv_len; int sock; } ;
typedef TYPE_2__ esp_ping_t ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ id; scalar_t__ seqno; } ;


 scalar_t__ AF_INET ;
 int IPADDR_TYPE_V4 ;
 int IPADDR_TYPE_V6 ;
 int IPH_HL (struct ip_hdr*) ;
 scalar_t__ IP_IS_V4_VAL (int ) ;
 int IP_SET_TYPE_VAL (int ,int ) ;
 int inet6_addr_to_ip6addr (int ,int *) ;
 int inet_addr_to_ip4addr (int ,int *) ;
 int ip_2_ip4 (int *) ;
 int ip_2_ip6 (int *) ;
 int recvfrom (int ,char*,int,int ,struct sockaddr*,int *) ;

__attribute__((used)) static int esp_ping_receive(esp_ping_t *ep)
{
    char buf[64];
    int len = 0;
    struct sockaddr_storage from;
    int fromlen = sizeof(from);

    while ((len = recvfrom(ep->sock, buf, sizeof(buf), 0, (struct sockaddr *)&from, (socklen_t *)&fromlen)) > 0) {
        if (len >= (int)(sizeof(struct ip_hdr) + sizeof(struct icmp_echo_hdr))) {
            ep->recv_len = (uint32_t)len;
            if (from.ss_family == AF_INET) {

                struct sockaddr_in *from4 = (struct sockaddr_in *)&from;
                inet_addr_to_ip4addr(ip_2_ip4(&ep->recv_addr), &from4->sin_addr);
                IP_SET_TYPE_VAL(ep->recv_addr, IPADDR_TYPE_V4);
            } else {

                struct sockaddr_in6 *from6 = (struct sockaddr_in6 *)&from;
                inet6_addr_to_ip6addr(ip_2_ip6(&ep->recv_addr), &from6->sin6_addr);
                IP_SET_TYPE_VAL(ep->recv_addr, IPADDR_TYPE_V6);
            }


            if (IP_IS_V4_VAL(ep->recv_addr)) {
                struct ip_hdr *iphdr = (struct ip_hdr *)buf;
                struct icmp_echo_hdr *iecho = (struct icmp_echo_hdr *)(buf + (IPH_HL(iphdr) * 4));
                if ((iecho->id == ep->packet_hdr->id) && (iecho->seqno == ep->packet_hdr->seqno)) {
                    ep->received++;
                    ep->ttl = iphdr->_ttl;
                    return len;
                }
            }
        }
        fromlen = sizeof(from);
    }

    return len;
}
