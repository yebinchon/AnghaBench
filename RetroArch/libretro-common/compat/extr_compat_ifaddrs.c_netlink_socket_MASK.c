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
struct sockaddr_nl {int /*<<< orphan*/  nl_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  l_addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETLINK ; 
 int /*<<< orphan*/  NETLINK_ROUTE ; 
 int /*<<< orphan*/  PF_NETLINK ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_nl*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
   struct sockaddr_nl l_addr;
   int l_socket = FUNC3(PF_NETLINK, SOCK_RAW, NETLINK_ROUTE);

   if(l_socket < 0)
      return -1;

   FUNC2(&l_addr, 0, sizeof(l_addr));
   l_addr.nl_family = AF_NETLINK;
   if(FUNC0(l_socket, (struct sockaddr *)&l_addr, sizeof(l_addr)) < 0)
   {
      FUNC1(l_socket);
      return -1;
   }

   return l_socket;
}