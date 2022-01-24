#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ifaddrs {struct ifaddrs* ifa_dstaddr; struct ifaddrs* ifa_netmask; struct ifaddrs* ifa_addr; struct ifaddrs* ifa_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddrs*) ; 

void FUNC1(struct ifaddrs *ifp)
{
   if (ifp)
   {
      if (ifp->ifa_name)
      {
         FUNC0(ifp->ifa_name);
         ifp->ifa_name = NULL;
      }

      if (ifp->ifa_addr)
      {
         FUNC0(ifp->ifa_addr);
         ifp->ifa_addr = NULL;
      }

      if (ifp->ifa_netmask)
      {
         FUNC0(ifp->ifa_netmask);
         ifp->ifa_netmask = NULL;
      }

      if (ifp->ifa_dstaddr)
      {
         FUNC0(ifp->ifa_dstaddr);
         ifp->ifa_dstaddr = NULL;
      }
      FUNC0(ifp);
   }
}