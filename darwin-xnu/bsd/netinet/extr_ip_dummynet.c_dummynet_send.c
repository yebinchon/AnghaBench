
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int tmp_rt ;
struct route {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_pkt_tag {int dn_dir; int dn_flags; } ;






 int DPRINTF (char*) ;
 int IPV6_FORWARDING ;
 int IP_FORWARDING ;
 int IP_RAWOUTPUT ;
 int PF_INET ;
 int PF_INET6 ;
 int ROUTE_RELEASE (struct route*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct mbuf*) ;
 int bzero (struct route*,int) ;
 struct dn_pkt_tag* dn_tag_get (struct mbuf*) ;
 int ip6_output (struct mbuf*,int *,int *,int ,int *,int *,int *) ;
 int ip_output (struct mbuf*,int *,struct route*,int,int *,int *) ;
 int m_freem (struct mbuf*) ;
 int printf (char*,int) ;
 int proto_inject (int ,struct mbuf*) ;

__attribute__((used)) static void
dummynet_send(struct mbuf *m)
{
 struct dn_pkt_tag *pkt;
 struct mbuf *n;

 for (; m != ((void*)0); m = n) {
  n = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);
  pkt = dn_tag_get(m);

  DPRINTF(("dummynet_send m: 0x%llx dn_dir: %d dn_flags: 0x%x\n",
      (uint64_t)VM_KERNEL_ADDRPERM(m), pkt->dn_dir,
      pkt->dn_flags));

 switch (pkt->dn_dir) {
  case 128: {
   struct route tmp_rt;


   bzero(&tmp_rt, sizeof (tmp_rt));


   pkt->dn_flags |= IP_RAWOUTPUT | IP_FORWARDING;
   (void)ip_output(m, ((void*)0), &tmp_rt, pkt->dn_flags, ((void*)0), ((void*)0));
   ROUTE_RELEASE(&tmp_rt);
   break ;
  }
  case 129 :
   proto_inject(PF_INET, m);
   break ;
  default:
   printf("dummynet: bad switch %d!\n", pkt->dn_dir);
   m_freem(m);
   break ;
 }
 }
}
