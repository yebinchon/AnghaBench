
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_bandwidths {int dummy; } ;
struct ifnet {struct if_bandwidths if_input_bw; struct if_bandwidths if_output_bw; } ;
typedef int errno_t ;


 int EINVAL ;

errno_t
ifnet_bandwidths(struct ifnet *ifp, struct if_bandwidths *output_bw,
    struct if_bandwidths *input_bw)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 if (output_bw != ((void*)0))
  *output_bw = ifp->if_output_bw;
 if (input_bw != ((void*)0))
  *input_bw = ifp->if_input_bw;

 return (0);
}
