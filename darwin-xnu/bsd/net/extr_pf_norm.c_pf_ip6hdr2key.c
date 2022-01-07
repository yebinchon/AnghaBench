
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int v6addr; } ;
struct TYPE_3__ {int v6addr; } ;
struct pf_fragment {TYPE_2__ fr_dstx; TYPE_1__ fr_srcx; int fr_af; int fr_id6; int fr_p; } ;
struct ip6_hdr {int ip6_dst; int ip6_src; } ;
struct ip6_frag {int ip6f_ident; int ip6f_nxt; } ;


 int AF_INET6 ;

__attribute__((used)) static void
pf_ip6hdr2key(struct pf_fragment *key, struct ip6_hdr *ip6,
    struct ip6_frag *fh)
{
 key->fr_p = fh->ip6f_nxt;
 key->fr_id6 = fh->ip6f_ident;
 key->fr_af = AF_INET6;
 key->fr_srcx.v6addr = ip6->ip6_src;
 key->fr_dstx.v6addr = ip6->ip6_dst;
}
