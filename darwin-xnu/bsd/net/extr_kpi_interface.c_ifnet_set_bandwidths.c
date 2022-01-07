
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct if_bandwidths {int dummy; } ;
typedef int errno_t ;


 int EINVAL ;
 int FALSE ;
 int ifnet_set_input_bandwidths (struct ifnet*,struct if_bandwidths*) ;
 int ifnet_set_output_bandwidths (struct ifnet*,struct if_bandwidths*,int ) ;

errno_t
ifnet_set_bandwidths(struct ifnet *ifp, struct if_bandwidths *output_bw,
    struct if_bandwidths *input_bw)
{
 if (ifp == ((void*)0))
  return (EINVAL);


 if (input_bw != ((void*)0))
  (void) ifnet_set_input_bandwidths(ifp, input_bw);

 if (output_bw != ((void*)0))
  (void) ifnet_set_output_bandwidths(ifp, output_bw, FALSE);

 return (0);
}
