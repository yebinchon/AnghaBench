#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct linger {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ling ;
typedef  int /*<<< orphan*/  flags ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;
typedef  TYPE_2__ ebb_server ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_LINGER ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int const) ; 

int 
FUNC10(ebb_server *server, const int port)
{
  int fd = -1;
  struct linger ling = {0, 0};
  struct sockaddr_in addr;
  int flags = 1;
  
  if ((fd = FUNC8(AF_INET, SOCK_STREAM, 0)) == -1) {
    FUNC6("socket()");
    goto error;
  }
  
  flags = 1;
  FUNC7(fd, SOL_SOCKET, SO_REUSEADDR, (void *)&flags, sizeof(flags));
  FUNC7(fd, SOL_SOCKET, SO_KEEPALIVE, (void *)&flags, sizeof(flags));
  FUNC7(fd, SOL_SOCKET, SO_LINGER, (void *)&ling, sizeof(ling));

  /* XXX: Sending single byte chunks in a response body? Perhaps there is a
   * need to enable the Nagel algorithm dynamically. For now disabling.
   */
  FUNC7(fd, IPPROTO_TCP, TCP_NODELAY, (void *)&flags, sizeof(flags));
  
  /* the memset call clears nonstandard fields in some impementations that
   * otherwise mess things up.
   */
  FUNC5(&addr, 0, sizeof(addr));
  
  addr.sin_family = AF_INET;
  addr.sin_port = FUNC4(port);
  addr.sin_addr.s_addr = FUNC3(INADDR_ANY);
  
  if (FUNC0(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
    FUNC6("bind()");
    goto error;
  }
  
  int ret = FUNC2(server, fd);
  if (ret >= 0) {
    FUNC9(server->port, "%d", port);
  }
  return ret;
error:
  if(fd > 0) FUNC1(fd);
  return -1;
}