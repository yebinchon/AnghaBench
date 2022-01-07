
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in_addr {int member_0; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int IFSCOPE_NONE ;
 int RTF_GATEWAY ;
 int RTM_ADD ;
 int route_cmd (int ,struct in_addr,struct in_addr,struct in_addr,int ,int ) ;

__attribute__((used)) static int
default_route_add(struct in_addr router, boolean_t proxy_arp)
{
    uint32_t flags = 0;
    struct in_addr zeroes = { 0 };

    if (proxy_arp == FALSE) {
 flags |= RTF_GATEWAY;
    }
    return (route_cmd(RTM_ADD, zeroes, router, zeroes, flags, IFSCOPE_NONE));
}
