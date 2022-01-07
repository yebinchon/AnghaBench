
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct if_latencies {int dummy; } ;
typedef int errno_t ;


 int EINVAL ;
 int FALSE ;
 int ifnet_set_input_latencies (struct ifnet*,struct if_latencies*) ;
 int ifnet_set_output_latencies (struct ifnet*,struct if_latencies*,int ) ;

errno_t
ifnet_set_latencies(struct ifnet *ifp, struct if_latencies *output_lt,
    struct if_latencies *input_lt)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 if (output_lt != ((void*)0))
  (void) ifnet_set_output_latencies(ifp, output_lt, FALSE);

 if (input_lt != ((void*)0))
  (void) ifnet_set_input_latencies(ifp, input_lt);

 return (0);
}
