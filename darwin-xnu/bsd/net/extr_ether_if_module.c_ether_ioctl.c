
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int ifnet_t ;


 int EOPNOTSUPP ;

int
ether_ioctl(ifnet_t ifp, u_int32_t command, void *data)
{
#pragma unused(ifp, command, data)
 return (EOPNOTSUPP);
}
