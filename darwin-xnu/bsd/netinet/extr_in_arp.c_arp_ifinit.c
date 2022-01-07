
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct sockaddr* ifa_addr; int ifa_flags; int ifa_rtrequest; } ;


 int ARPOP_REQUEST ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int RTF_CLONING ;
 int arp_rtrequest ;
 int dlil_send_arp (struct ifnet*,int ,int *,struct sockaddr*,int *,struct sockaddr*,int ) ;

void
arp_ifinit(struct ifnet *ifp, struct ifaddr *ifa)
{
 struct sockaddr *sa;

 IFA_LOCK(ifa);
 ifa->ifa_rtrequest = arp_rtrequest;
 ifa->ifa_flags |= RTF_CLONING;
 sa = ifa->ifa_addr;
 IFA_UNLOCK(ifa);
 dlil_send_arp(ifp, ARPOP_REQUEST, ((void*)0), sa, ((void*)0), sa, 0);
}
