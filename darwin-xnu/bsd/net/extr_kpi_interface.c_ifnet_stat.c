
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet_stats_param {int no_protocol; int dropped; int collisions; int errors_out; int multicasts_out; int bytes_out; int packets_out; int errors_in; int multicasts_in; int bytes_in; int packets_in; } ;
struct TYPE_2__ {int ifi_noproto; int ifi_iqdrops; int ifi_collisions; int ifi_oerrors; int ifi_omcasts; int ifi_obytes; int ifi_opackets; int ifi_ierrors; int ifi_imcasts; int ifi_ibytes; int ifi_ipackets; } ;
struct ifnet {scalar_t__ if_data_threshold; TYPE_1__ if_data; } ;
typedef int errno_t ;


 int EINVAL ;
 int atomic_get_64 (int ,int *) ;
 int ifnet_notify_data_threshold (struct ifnet*) ;

errno_t
ifnet_stat(struct ifnet *ifp, struct ifnet_stats_param *s)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 atomic_get_64(s->packets_in, &ifp->if_data.ifi_ipackets);
 atomic_get_64(s->bytes_in, &ifp->if_data.ifi_ibytes);
 atomic_get_64(s->multicasts_in, &ifp->if_data.ifi_imcasts);
 atomic_get_64(s->errors_in, &ifp->if_data.ifi_ierrors);

 atomic_get_64(s->packets_out, &ifp->if_data.ifi_opackets);
 atomic_get_64(s->bytes_out, &ifp->if_data.ifi_obytes);
 atomic_get_64(s->multicasts_out, &ifp->if_data.ifi_omcasts);
 atomic_get_64(s->errors_out, &ifp->if_data.ifi_oerrors);

 atomic_get_64(s->collisions, &ifp->if_data.ifi_collisions);
 atomic_get_64(s->dropped, &ifp->if_data.ifi_iqdrops);
 atomic_get_64(s->no_protocol, &ifp->if_data.ifi_noproto);

 if (ifp->if_data_threshold != 0)
  ifnet_notify_data_threshold(ifp);

 return (0);
}
