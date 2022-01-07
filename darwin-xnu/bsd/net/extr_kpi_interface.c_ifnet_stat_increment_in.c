
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {int ifi_ierrors; int ifi_ibytes; int ifi_ipackets; } ;
struct ifnet {scalar_t__ if_data_threshold; int if_lastchange; TYPE_1__ if_data; } ;
typedef int errno_t ;


 int EINVAL ;
 int TOUCHLASTCHANGE (int *) ;
 int atomic_add_64 (int *,scalar_t__) ;
 int ifnet_notify_data_threshold (struct ifnet*) ;

errno_t
ifnet_stat_increment_in(struct ifnet *ifp, u_int32_t packets_in,
    u_int32_t bytes_in, u_int32_t errors_in)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 if (packets_in != 0)
  atomic_add_64(&ifp->if_data.ifi_ipackets, packets_in);
 if (bytes_in != 0)
  atomic_add_64(&ifp->if_data.ifi_ibytes, bytes_in);
 if (errors_in != 0)
  atomic_add_64(&ifp->if_data.ifi_ierrors, errors_in);

 TOUCHLASTCHANGE(&ifp->if_lastchange);

 if (ifp->if_data_threshold != 0)
  ifnet_notify_data_threshold(ifp);

 return (0);
}
