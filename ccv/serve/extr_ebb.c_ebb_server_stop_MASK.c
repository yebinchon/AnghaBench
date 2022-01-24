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
struct TYPE_3__ {char* port; scalar_t__ listening; int /*<<< orphan*/  fd; int /*<<< orphan*/  connection_watcher; int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ ebb_server ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void 
FUNC2(ebb_server *server)
{
  if(server->listening) {
    FUNC1(server->loop, &server->connection_watcher);
    FUNC0(server->fd);
    server->port[0] = '\0';
    server->listening = 0;
  }
}