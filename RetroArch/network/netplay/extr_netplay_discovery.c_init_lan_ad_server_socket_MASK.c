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
typedef  int /*<<< orphan*/  uint16_t ;
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  netplay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SOCKET_TYPE_DATAGRAM ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int lan_ad_server_fd ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(netplay_t *netplay, uint16_t port)
{
   struct addrinfo *addr = NULL;
   int fd = FUNC4((void **) &addr, port, NULL, SOCKET_TYPE_DATAGRAM);

   if (fd < 0)
      goto error;

   if (!FUNC2(fd, (void*)addr))
   {
      FUNC3(fd);
      goto error;
   }

   lan_ad_server_fd = fd;
   FUNC1(addr);

   return true;

error:
   if (addr)
      FUNC1(addr);
   FUNC0("[discovery] Failed to initialize netplay advertisement socket\n");
   return false;
}