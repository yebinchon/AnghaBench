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
struct net_ifinfo_entry {int /*<<< orphan*/  host; } ;
struct net_ifinfo {size_t size; struct net_ifinfo_entry* entries; } ;
struct natt_status {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  port_str ;
typedef  enum socket_protocol { ____Placeholder_socket_protocol } socket_protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC2 (struct natt_status*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_ifinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_ifinfo*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

bool FUNC7(struct natt_status *status,
      uint16_t port, enum socket_protocol proto)
{
#if !defined(HAVE_SOCKET_LEGACY) && (!defined(SWITCH) || defined(SWITCH) && defined(HAVE_LIBNX))
   size_t i;
   char port_str[6];
   struct net_ifinfo list;
   struct addrinfo hints = {0}, *addr;
   bool ret              = false;

   FUNC5(port_str, sizeof(port_str), "%hu", port);

   /* get our interfaces */
   if (!FUNC4(&list))
      return false;

   /* loop through them */
   for (i = 0; i < list.size; i++)
   {
      struct net_ifinfo_entry *entry = list.entries + i;

      /* ignore localhost */
      if (  FUNC6(entry->host, "127.0.0.1") ||
            FUNC6(entry->host, "::1"))
         continue;

      /* make a request for this host */
      if (FUNC1(entry->host, port_str, &hints, &addr) == 0)
      {
         ret = FUNC2(status, addr->ai_addr,
               addr->ai_addrlen, proto) || ret;
         FUNC0(addr);
      }
   }

   FUNC3(&list);

   return ret;

#else
   return false;
#endif
}