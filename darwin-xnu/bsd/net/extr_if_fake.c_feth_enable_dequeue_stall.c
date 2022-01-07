
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ifnet_t ;


 int ifnet_disable_output (int ) ;
 int ifnet_enable_output (int ) ;

__attribute__((used)) static int
feth_enable_dequeue_stall(ifnet_t ifp, uint32_t enable)
{
 int error;

 if (enable != 0)
  error = ifnet_disable_output(ifp);
 else
  error = ifnet_enable_output(ifp);

 return (error);
}
