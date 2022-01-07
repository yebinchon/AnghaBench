
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet_stat_increment_param {scalar_t__ packets_in; scalar_t__ bytes_in; scalar_t__ errors_in; scalar_t__ packets_out; scalar_t__ bytes_out; scalar_t__ errors_out; scalar_t__ collisions; scalar_t__ dropped; } ;
struct TYPE_2__ {int ifi_iqdrops; int ifi_collisions; int ifi_oerrors; int ifi_obytes; int ifi_opackets; int ifi_ierrors; int ifi_ibytes; int ifi_ipackets; } ;
struct ifnet {scalar_t__ if_data_threshold; int if_lastchange; TYPE_1__ if_data; } ;
typedef int errno_t ;


 int EINVAL ;
 int TOUCHLASTCHANGE (int *) ;
 int atomic_add_64 (int *,scalar_t__) ;
 int ifnet_notify_data_threshold (struct ifnet*) ;

errno_t
ifnet_stat_increment(struct ifnet *ifp,
    const struct ifnet_stat_increment_param *s)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 if (s->packets_in != 0)
  atomic_add_64(&ifp->if_data.ifi_ipackets, s->packets_in);
 if (s->bytes_in != 0)
  atomic_add_64(&ifp->if_data.ifi_ibytes, s->bytes_in);
 if (s->errors_in != 0)
  atomic_add_64(&ifp->if_data.ifi_ierrors, s->errors_in);

 if (s->packets_out != 0)
  atomic_add_64(&ifp->if_data.ifi_opackets, s->packets_out);
 if (s->bytes_out != 0)
  atomic_add_64(&ifp->if_data.ifi_obytes, s->bytes_out);
 if (s->errors_out != 0)
  atomic_add_64(&ifp->if_data.ifi_oerrors, s->errors_out);

 if (s->collisions != 0)
  atomic_add_64(&ifp->if_data.ifi_collisions, s->collisions);
 if (s->dropped != 0)
  atomic_add_64(&ifp->if_data.ifi_iqdrops, s->dropped);


 TOUCHLASTCHANGE(&ifp->if_lastchange);

 if (ifp->if_data_threshold != 0)
  ifnet_notify_data_threshold(ifp);

 return (0);
}
