#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fd; int /*<<< orphan*/  ssl_ctx; scalar_t__ ssl; } ;
struct http_connection_t {TYPE_1__ sock_state; int /*<<< orphan*/  domain; int /*<<< orphan*/  port; } ;
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_TYPE_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,void*,int) ; 
 int FUNC3 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void**) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct http_connection_t *conn)
{
   int ret;
   struct addrinfo *addr = NULL, *next_addr = NULL;
   int fd                = FUNC3(
         (void**)&addr, conn->port, conn->domain, SOCKET_TYPE_STREAM);
#ifdef HAVE_SSL
   if (conn->sock_state.ssl)
   {
      if (!(conn->sock_state.ssl_ctx = ssl_socket_init(fd, conn->domain)))
         return -1;
   }
#endif

   next_addr = addr;

   while (fd >= 0)
   {
#ifdef HAVE_SSL
      if (conn->sock_state.ssl)
      {
         ret = ssl_socket_connect(conn->sock_state.ssl_ctx,
               (void*)next_addr, true, true);

         if (ret >= 0)
            break;

         ssl_socket_close(conn->sock_state.ssl_ctx);
      }
      else
#endif
      {
         ret = FUNC2(fd, (void*)next_addr, true);

         if (ret >= 0 && FUNC5(fd))
            break;

         FUNC1(fd);
      }

      fd = FUNC4((void**)&next_addr);
   }

   if (addr)
      FUNC0(addr);

   conn->sock_state.fd = fd;

   return fd;
}