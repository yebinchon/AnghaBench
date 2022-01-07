
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_2__ {int eff_bw; } ;
struct ifnet {TYPE_1__ if_input_bw; } ;



u_int64_t
ifnet_input_linkrate(struct ifnet *ifp)
{
 return (ifp->if_input_bw.eff_bw);
}
