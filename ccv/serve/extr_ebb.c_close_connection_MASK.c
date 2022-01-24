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
struct TYPE_6__ {int /*<<< orphan*/  (* on_close ) (TYPE_2__*) ;scalar_t__ open; int /*<<< orphan*/  fd; int /*<<< orphan*/  timeout_watcher; TYPE_1__* server; int /*<<< orphan*/  write_watcher; int /*<<< orphan*/  read_watcher; } ;
typedef  TYPE_2__ ebb_connection ;
struct TYPE_5__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void 
FUNC5(ebb_connection *connection)
{
  FUNC2(connection->server->loop, &connection->read_watcher);
  FUNC2(connection->server->loop, &connection->write_watcher);
  FUNC3(connection->server->loop, &connection->timeout_watcher);

  if(0 > FUNC0(connection->fd))
    FUNC1("problem closing connection fd");

  connection->open = 0;

  if(connection->on_close)
    connection->on_close(connection);
  /* No access to the connection past this point! 
   * The user is allowed to free in the callback
   */
}