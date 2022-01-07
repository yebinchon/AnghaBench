
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct route {int ipoa_boundif; int ipoa_flags; int ipoa_netsvctype; int ipoa_sotc; } ;
struct mbuf {scalar_t__ m_len; } ;
struct m_tag {int dummy; } ;
struct ip_out_args {int ipoa_boundif; int ipoa_flags; int ipoa_netsvctype; int ipoa_sotc; } ;
struct ip_moptions {int imo_multicast_loop; int imo_multicast_ttl; int imo_multicast_ifp; } ;
struct ip {int ip_off; int ip_len; } ;
typedef scalar_t__ mbuf_t ;
typedef int ipoa ;
typedef scalar_t__ ipfilter_t ;
typedef TYPE_1__* ipf_pktopts_t ;
typedef int errno_t ;
struct TYPE_3__ {int ippo_flags; int ippo_mcast_loop; int ippo_mcast_ttl; int ippo_mcast_ifnet; } ;


 int ENOMEM ;
 int IFSCOPE_NONE ;
 int IMO_REMREF (struct ip_moptions*) ;
 int IPOAF_BOUND_IF ;
 int IPOAF_BOUND_SRCADDR ;
 int IPOAF_NO_CELLULAR ;
 int IPOAF_NO_EXPENSIVE ;
 int IPOAF_SELECT_SRCIF ;
 int IPPOF_BOUND_IF ;
 int IPPOF_BOUND_SRCADDR ;
 int IPPOF_MCAST_OPTS ;
 int IPPOF_NO_IFF_EXPENSIVE ;
 int IPPOF_NO_IFT_CELLULAR ;
 int IPPOF_SELECT_SRCIF ;
 int IPPOF_SHIFT_IFSCOPE ;
 int IP_ALLOWBROADCAST ;
 int IP_OUTARGS ;
 int IP_RAWOUTPUT ;
 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_IPFILT ;
 int M_DONTWAIT ;
 int M_NOWAIT ;
 int NTOHS (int ) ;
 int ROUTE_RELEASE (struct route*) ;
 int SO_TC_UNSPEC ;
 int _NET_SERVICE_TYPE_UNSPEC ;
 int bzero (struct route*,int) ;
 struct ip_moptions* ip_allocmoptions (int ) ;
 int ip_output (struct mbuf*,int *,struct route*,int,struct ip_moptions*,struct route*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ m_mtod (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*,int) ;
 struct m_tag* m_tag_create (int ,int ,int,int ,struct mbuf*) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static errno_t
ipf_injectv4_out(mbuf_t data, ipfilter_t filter_ref, ipf_pktopts_t options)
{
 struct route ro;
 struct ip *ip;
 struct mbuf *m = (struct mbuf *)data;
 errno_t error = 0;
 struct m_tag *mtag = ((void*)0);
 struct ip_moptions *imo = ((void*)0);
 struct ip_out_args ipoa;

 bzero(&ipoa, sizeof(ipoa));
 ipoa.ipoa_boundif = IFSCOPE_NONE;
 ipoa.ipoa_sotc = SO_TC_UNSPEC;
 ipoa.ipoa_netsvctype = _NET_SERVICE_TYPE_UNSPEC;


 if ((size_t)m->m_len < sizeof (struct ip)) {
  m = m_pullup(m, sizeof (struct ip));
  if (m == ((void*)0))
   return (ENOMEM);
 }
 ip = (struct ip *)m_mtod(m);

 if (filter_ref != 0) {
  mtag = m_tag_create(KERNEL_MODULE_TAG_ID,
      KERNEL_TAG_TYPE_IPFILT, sizeof (ipfilter_t), M_NOWAIT, m);
  if (mtag == ((void*)0)) {
   m_freem(m);
   return (ENOMEM);
  }
  *(ipfilter_t *)(mtag + 1) = filter_ref;
  m_tag_prepend(m, mtag);
 }

 if (options != ((void*)0) && (options->ippo_flags & IPPOF_MCAST_OPTS) &&
     (imo = ip_allocmoptions(M_DONTWAIT)) != ((void*)0)) {
  imo->imo_multicast_ifp = options->ippo_mcast_ifnet;
  imo->imo_multicast_ttl = options->ippo_mcast_ttl;
  imo->imo_multicast_loop = options->ippo_mcast_loop;
 }

 if (options != ((void*)0)) {
  if (options->ippo_flags & IPPOF_SELECT_SRCIF)
   ipoa.ipoa_flags |= IPOAF_SELECT_SRCIF;
  if (options->ippo_flags & IPPOF_BOUND_IF) {
   ipoa.ipoa_flags |= IPOAF_BOUND_IF;
   ipoa.ipoa_boundif = options->ippo_flags >>
       IPPOF_SHIFT_IFSCOPE;
  }
  if (options->ippo_flags & IPPOF_NO_IFT_CELLULAR)
   ipoa.ipoa_flags |= IPOAF_NO_CELLULAR;
  if (options->ippo_flags & IPPOF_BOUND_SRCADDR)
   ipoa.ipoa_flags |= IPOAF_BOUND_SRCADDR;
  if (options->ippo_flags & IPPOF_NO_IFF_EXPENSIVE)
   ipoa.ipoa_flags |= IPOAF_NO_EXPENSIVE;
 }

 bzero(&ro, sizeof(struct route));
 error = ip_output(m, ((void*)0), &ro,
     IP_ALLOWBROADCAST | IP_RAWOUTPUT | IP_OUTARGS, imo, &ipoa);


 ROUTE_RELEASE(&ro);

 if (imo != ((void*)0))
  IMO_REMREF(imo);

 return (error);
}
