
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int dummy; } ;
typedef TYPE_2__* mbuf_t ;
typedef scalar_t__ ifnet_t ;
typedef int errno_t ;
struct TYPE_4__ {struct ifnet* rcvif; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;



errno_t
mbuf_pkthdr_setrcvif(mbuf_t mbuf, ifnet_t ifnet)
{

 mbuf->m_pkthdr.rcvif = (struct ifnet *)ifnet;
 return (0);
}
