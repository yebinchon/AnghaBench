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
typedef  scalar_t__ uint16_t ;
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  port_buf ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 scalar_t__ FUNC1 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC2 (int,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned short) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char const*) ; 

bool FUNC7(const char *host,
      uint16_t port, const char *msg)
{
   char port_buf[16]           = {0};
   struct addrinfo hints       = {0};
   struct addrinfo *res        = NULL;
   const struct addrinfo *tmp  = NULL;
   int fd                      = -1;
   bool ret                    = true;

   hints.ai_socktype           = SOCK_DGRAM;

   FUNC3(port_buf, sizeof(port_buf), "%hu", (unsigned short)port);

   if (FUNC1(host, port_buf, &hints, &res) != 0)
      return false;

   /* Send to all possible targets.
    * "localhost" might resolve to several different IPs. */
   tmp = (const struct addrinfo*)res;
   while (tmp)
   {
      ssize_t len, ret_len;

      fd = FUNC4(tmp->ai_family, tmp->ai_socktype, tmp->ai_protocol);
      if (fd < 0)
      {
         ret = false;
         goto end;
      }

      len     = FUNC6(msg);
      ret_len = FUNC2(fd, msg, len, 0, tmp->ai_addr, tmp->ai_addrlen);

      if (ret_len < len)
      {
         ret = false;
         goto end;
      }

      FUNC5(fd);
      fd = -1;
      tmp = tmp->ai_next;
   }

end:
   FUNC0(res);
   if (fd >= 0)
      FUNC5(fd);
   return ret;
}