#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int listening; int fd; int /*<<< orphan*/  connection_watcher; int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ ebb_server ;

/* Variables and functions */
 int /*<<< orphan*/  EBB_MAX_CONNECTIONS ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 

int 
FUNC6(ebb_server *server, const int fd)
{
  FUNC0(server->listening == 0);

  if (FUNC3(fd, EBB_MAX_CONNECTIONS) < 0) {
    FUNC4("listen()");
    return -1;
  }
  
  FUNC5(fd); /* XXX superfluous? */
  
  server->fd = fd;
  server->listening = 1;
  
  FUNC1 (&server->connection_watcher, server->fd, EV_READ);
  FUNC2 (server->loop, &server->connection_watcher);
  
  return server->fd;
}