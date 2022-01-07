
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet_stats_param {int no_protocol; int dropped; int collisions; int errors_out; int multicasts_out; int bytes_out; int packets_out; int errors_in; int multicasts_in; int bytes_in; int packets_in; } ;
struct TYPE_2__ {int ifi_noproto; int ifi_iqdrops; int ifi_collisions; int ifi_oerrors; int ifi_omcasts; int ifi_obytes; int ifi_opackets; int ifi_ierrors; int ifi_imcasts; int ifi_ibytes; int ifi_ipackets; } ;
struct ifnet {scalar_t__ if_data_threshold; int if_lastchange; TYPE_1__ if_data; } ;
typedef int errno_t ;


 int EINVAL ;
 int TOUCHLASTCHANGE (int *) ;
 int atomic_set_64 (int *,int ) ;
 int ifnet_notify_data_threshold (struct ifnet*) ;

errno_t
ifnet_set_stat(struct ifnet *ifp, const struct ifnet_stats_param *s)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 atomic_set_64(&ifp->if_data.ifi_ipackets, s->packets_in);
 atomic_set_64(&ifp->if_data.ifi_ibytes, s->bytes_in);
 atomic_set_64(&ifp->if_data.ifi_imcasts, s->multicasts_in);
 atomic_set_64(&ifp->if_data.ifi_ierrors, s->errors_in);

 atomic_set_64(&ifp->if_data.ifi_opackets, s->packets_out);
 atomic_set_64(&ifp->if_data.ifi_obytes, s->bytes_out);
 atomic_set_64(&ifp->if_data.ifi_omcasts, s->multicasts_out);
 atomic_set_64(&ifp->if_data.ifi_oerrors, s->errors_out);

 atomic_set_64(&ifp->if_data.ifi_collisions, s->collisions);
 atomic_set_64(&ifp->if_data.ifi_iqdrops, s->dropped);
 atomic_set_64(&ifp->if_data.ifi_noproto, s->no_protocol);


 TOUCHLASTCHANGE(&ifp->if_lastchange);

 if (ifp->if_data_threshold != 0)
  ifnet_notify_data_threshold(ifp);

 return (0);
}
