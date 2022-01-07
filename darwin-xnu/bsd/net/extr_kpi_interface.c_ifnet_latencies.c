
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_latencies {int dummy; } ;
struct ifnet {struct if_latencies if_input_lt; struct if_latencies if_output_lt; } ;
typedef int errno_t ;


 int EINVAL ;

errno_t
ifnet_latencies(struct ifnet *ifp, struct if_latencies *output_lt,
    struct if_latencies *input_lt)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 if (output_lt != ((void*)0))
  *output_lt = ifp->if_output_lt;
 if (input_lt != ((void*)0))
  *input_lt = ifp->if_input_lt;

 return (0);
}
