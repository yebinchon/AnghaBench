
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int16_t ;
struct ip6_hdr {int ip6_plen; int ip_len; int ip_off; } ;
struct ip {int ip6_plen; int ip_len; int ip_off; } ;
typedef int sa_family_t ;
struct TYPE_4__ {unsigned int pb_packet_len; struct ip6_hdr* pb_data; } ;
typedef TYPE_1__ pbuf_t ;


 int ACTION_SET (int *,int ) ;


 int IP_OFFMASK ;
 int PFRES_FRAG ;
 int PFRES_SHORT ;
 int PF_DROP ;
 int PF_PASS ;
 int REASON_SET (int *,int ) ;
 int ntohs (int ) ;
 int pbuf_copy_data (TYPE_1__*,int,int,void*) ;

void *
pf_pull_hdr(pbuf_t *pbuf, int off, void *p, int len,
    u_short *actionp, u_short *reasonp, sa_family_t af)
{
 switch (af) {
 }
 pbuf_copy_data(pbuf, off, len, p);
 return (p);
}
