
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct ifnet {int if_baudrate; } ;



u_int64_t
ifnet_baudrate(struct ifnet *ifp)
{
 return ((ifp == ((void*)0)) ? 0 : ifp->if_baudrate);
}
