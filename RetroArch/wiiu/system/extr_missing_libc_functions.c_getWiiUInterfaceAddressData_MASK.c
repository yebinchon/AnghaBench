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
struct sockaddr_in {int dummy; } ;
struct ifaddrs {scalar_t__ ifa_netmask; scalar_t__ ifa_addr; scalar_t__ ifa_dstaddr; } ;

/* Variables and functions */
 struct ifaddrs* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddrs*) ; 
 scalar_t__ FUNC2 (struct sockaddr_in*) ; 
 scalar_t__ FUNC3 (struct sockaddr_in*) ; 
 scalar_t__ FUNC4 (struct sockaddr_in*,struct sockaddr_in*,struct sockaddr_in*) ; 

__attribute__((used)) static struct ifaddrs *FUNC5(void)
{
   struct ifaddrs *result = FUNC0();

   if (result)
   {
      if (FUNC2((struct sockaddr_in *)result->ifa_addr) < 0 ||
            FUNC3((struct sockaddr_in *)result->ifa_netmask) < 0 ||
            FUNC4((struct sockaddr_in *)result->ifa_dstaddr,
               (struct sockaddr_in *)result->ifa_addr,
               (struct sockaddr_in *)result->ifa_netmask) < 0) {
         goto error;
      }
   }

   return result;

error:
   FUNC1(result);
   return NULL;
}