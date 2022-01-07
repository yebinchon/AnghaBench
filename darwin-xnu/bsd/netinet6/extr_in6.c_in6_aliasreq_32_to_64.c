
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ia6t_pltime; int ia6t_vltime; int ia6t_preferred; int ia6t_expire; } ;
struct in6_aliasreq_64 {TYPE_1__ ifra_lifetime; int ifra_flags; int ifra_prefixmask; int ifra_dstaddr; int ifra_addr; int ifra_name; } ;
struct TYPE_4__ {int ia6t_pltime; int ia6t_vltime; int ia6t_preferred; int ia6t_expire; } ;
struct in6_aliasreq_32 {TYPE_2__ ifra_lifetime; int ifra_flags; int ifra_prefixmask; int ifra_dstaddr; int ifra_addr; int ifra_name; } ;


 int bcopy (int ,int ,int) ;
 int bzero (struct in6_aliasreq_64*,int) ;

void
in6_aliasreq_32_to_64(struct in6_aliasreq_32 *src, struct in6_aliasreq_64 *dst)
{
 bzero(dst, sizeof (*dst));
 bcopy(src->ifra_name, dst->ifra_name, sizeof (dst->ifra_name));
 dst->ifra_addr = src->ifra_addr;
 dst->ifra_dstaddr = src->ifra_dstaddr;
 dst->ifra_prefixmask = src->ifra_prefixmask;
 dst->ifra_flags = src->ifra_flags;
 dst->ifra_lifetime.ia6t_expire = src->ifra_lifetime.ia6t_expire;
 dst->ifra_lifetime.ia6t_preferred = src->ifra_lifetime.ia6t_preferred;
 dst->ifra_lifetime.ia6t_vltime = src->ifra_lifetime.ia6t_vltime;
 dst->ifra_lifetime.ia6t_pltime = src->ifra_lifetime.ia6t_pltime;
}
