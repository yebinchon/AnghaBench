
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_4__ {int max_bw; int eff_bw; } ;
struct TYPE_3__ {int max_bw; int eff_bw; } ;
struct ifnet {int if_baudrate; TYPE_2__ if_input_bw; TYPE_1__ if_output_bw; } ;
typedef int errno_t ;


 int EINVAL ;

errno_t
ifnet_set_baudrate(struct ifnet *ifp, u_int64_t baudrate)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 ifp->if_output_bw.max_bw = ifp->if_input_bw.max_bw =
     ifp->if_output_bw.eff_bw = ifp->if_input_bw.eff_bw = baudrate;


 ifp->if_baudrate = (baudrate > 0xFFFFFFFF) ? 0xFFFFFFFF : baudrate;

 return (0);
}
