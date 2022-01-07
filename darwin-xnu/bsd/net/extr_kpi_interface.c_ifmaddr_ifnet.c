
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * ifnet_t ;
typedef TYPE_1__* ifmultiaddr_t ;
struct TYPE_3__ {int * ifma_ifp; } ;



ifnet_t
ifmaddr_ifnet(ifmultiaddr_t ifma)
{
 return ((ifma == ((void*)0)) ? ((void*)0) : ifma->ifma_ifp);
}
