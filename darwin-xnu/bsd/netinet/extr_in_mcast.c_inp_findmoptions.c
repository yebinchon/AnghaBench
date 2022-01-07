
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct ip_moptions {int imo_multicast_vif; int imo_max_memberships; struct in_mfilter* imo_mfilters; struct in_multi** imo_membership; scalar_t__ imo_num_memberships; int imo_multicast_loop; int imo_multicast_ttl; TYPE_1__ imo_multicast_addr; int * imo_multicast_ifp; } ;
struct inpcb {struct ip_moptions* inp_moptions; } ;
struct in_multi {int dummy; } ;
struct in_mfilter {int dummy; } ;


 int IMO_ADDREF (struct ip_moptions*) ;
 int IMO_REMREF (struct ip_moptions*) ;
 int INADDR_ANY ;
 int IP_DEFAULT_MULTICAST_TTL ;
 int IP_MIN_MEMBERSHIPS ;
 int MCAST_EXCLUDE ;
 int MCAST_UNDEFINED ;
 int M_INMFILTER ;
 int M_IPMOPTS ;
 int M_WAITOK ;
 int M_ZERO ;
 int _FREE (struct in_multi**,int ) ;
 void* _MALLOC (int,int ,int) ;
 int imf_init (struct in_mfilter*,int ,int ) ;
 int in_mcast_loop ;
 struct ip_moptions* ip_allocmoptions (int) ;

__attribute__((used)) static struct ip_moptions *
inp_findmoptions(struct inpcb *inp)
{
 struct ip_moptions *imo;
 struct in_multi **immp;
 struct in_mfilter *imfp;
 size_t idx;

 if ((imo = inp->inp_moptions) != ((void*)0)) {
  IMO_ADDREF(imo);
  return (imo);
 }

 imo = ip_allocmoptions(M_WAITOK);
 if (imo == ((void*)0))
  return (((void*)0));

 immp = _MALLOC(sizeof (*immp) * IP_MIN_MEMBERSHIPS, M_IPMOPTS,
     M_WAITOK | M_ZERO);
 if (immp == ((void*)0)) {
  IMO_REMREF(imo);
  return (((void*)0));
 }

 imfp = _MALLOC(sizeof (struct in_mfilter) * IP_MIN_MEMBERSHIPS,
     M_INMFILTER, M_WAITOK | M_ZERO);
 if (imfp == ((void*)0)) {
  _FREE(immp, M_IPMOPTS);
  IMO_REMREF(imo);
  return (((void*)0));
 }

 imo->imo_multicast_ifp = ((void*)0);
 imo->imo_multicast_addr.s_addr = INADDR_ANY;
 imo->imo_multicast_vif = -1;
 imo->imo_multicast_ttl = IP_DEFAULT_MULTICAST_TTL;
 imo->imo_multicast_loop = in_mcast_loop;
 imo->imo_num_memberships = 0;
 imo->imo_max_memberships = IP_MIN_MEMBERSHIPS;
 imo->imo_membership = immp;


 for (idx = 0; idx < IP_MIN_MEMBERSHIPS; idx++)
  imf_init(&imfp[idx], MCAST_UNDEFINED, MCAST_EXCLUDE);

 imo->imo_mfilters = imfp;
 inp->inp_moptions = imo;
 IMO_ADDREF(imo);

 return (imo);
}
