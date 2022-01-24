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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  YabSock ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(int port, YabSock *sock)
{
   struct sockaddr_in addr;
   char opt = 1;

   sock[0] = FUNC7(AF_INET, SOCK_STREAM, 0);

   if (FUNC6(sock[0], SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(int)) == -1)
   {
      FUNC5("setsockopt");
      return -1;
   }

   FUNC4(&addr, 0, sizeof(struct sockaddr_in));
   addr.sin_family = AF_INET;
   addr.sin_addr.s_addr = INADDR_ANY;
   addr.sin_port = FUNC2(port);
   if (FUNC0(sock[0], (struct sockaddr *) &addr, sizeof(addr)) == -1)
   {
      FUNC1(stderr, "Can't bind to port %d: %s\n", port, FUNC8(errno));
      return -1;
   }

   if (FUNC3(sock[0], 3) == -1)
   {
      FUNC5("listen");
      return -1;
   }

   return 0;
}