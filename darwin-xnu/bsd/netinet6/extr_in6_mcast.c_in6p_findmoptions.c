
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_moptions {int im6o_max_memberships; struct in6_mfilter* im6o_mfilters; struct in6_multi** im6o_membership; scalar_t__ im6o_num_memberships; int im6o_multicast_loop; int im6o_multicast_hlim; int * im6o_multicast_ifp; } ;
struct inpcb {struct ip6_moptions* in6p_moptions; } ;
struct in6_multi {int dummy; } ;
struct in6_mfilter {int dummy; } ;


 int IM6O_ADDREF (struct ip6_moptions*) ;
 int IM6O_REMREF (struct ip6_moptions*) ;
 int IPV6_MIN_MEMBERSHIPS ;
 int MCAST_EXCLUDE ;
 int MCAST_UNDEFINED ;
 int M_IN6MFILTER ;
 int M_IP6MOPTS ;
 int M_WAITOK ;
 int M_ZERO ;
 int _FREE (struct in6_multi**,int ) ;
 void* _MALLOC (int,int ,int) ;
 int im6f_init (struct in6_mfilter*,int ,int ) ;
 int in6_mcast_loop ;
 struct ip6_moptions* ip6_allocmoptions (int) ;
 int ip6_defmcasthlim ;

__attribute__((used)) static struct ip6_moptions *
in6p_findmoptions(struct inpcb *inp)
{
 struct ip6_moptions *imo;
 struct in6_multi **immp;
 struct in6_mfilter *imfp;
 size_t idx;

 if ((imo = inp->in6p_moptions) != ((void*)0)) {
  IM6O_ADDREF(imo);
  return (imo);
 }

 imo = ip6_allocmoptions(M_WAITOK);
 if (imo == ((void*)0))
  return (((void*)0));

 immp = _MALLOC(sizeof (*immp) * IPV6_MIN_MEMBERSHIPS, M_IP6MOPTS,
     M_WAITOK | M_ZERO);
 if (immp == ((void*)0)) {
  IM6O_REMREF(imo);
  return (((void*)0));
 }

 imfp = _MALLOC(sizeof (struct in6_mfilter) * IPV6_MIN_MEMBERSHIPS,
     M_IN6MFILTER, M_WAITOK | M_ZERO);
 if (imfp == ((void*)0)) {
  _FREE(immp, M_IP6MOPTS);
  IM6O_REMREF(imo);
  return (((void*)0));
 }

 imo->im6o_multicast_ifp = ((void*)0);
 imo->im6o_multicast_hlim = ip6_defmcasthlim;
 imo->im6o_multicast_loop = in6_mcast_loop;
 imo->im6o_num_memberships = 0;
 imo->im6o_max_memberships = IPV6_MIN_MEMBERSHIPS;
 imo->im6o_membership = immp;


 for (idx = 0; idx < IPV6_MIN_MEMBERSHIPS; idx++)
  im6f_init(&imfp[idx], MCAST_UNDEFINED, MCAST_EXCLUDE);

 imo->im6o_mfilters = imfp;
 inp->in6p_moptions = imo;
 IM6O_ADDREF(imo);

 return (imo);
}
