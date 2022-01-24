#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* to_write; size_t to_write_len; int /*<<< orphan*/  write_watcher; TYPE_1__* server; int /*<<< orphan*/  after_write_cb; scalar_t__ written; } ;
typedef  TYPE_2__ ebb_connection ;
typedef  int /*<<< orphan*/  ebb_after_write_cb ;
struct TYPE_4__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_HAS_SOMETHING_TO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int 
FUNC3(ebb_connection *connection, const char *buf, size_t len, ebb_after_write_cb cb)
{
  if(FUNC2(&connection->write_watcher))
    return 0;
  FUNC0(!CONNECTION_HAS_SOMETHING_TO_WRITE);
  connection->to_write = buf;
  connection->to_write_len = len;
  connection->written = 0;
  connection->after_write_cb = cb;
  FUNC1(connection->server->loop, &connection->write_watcher);
  return 1;
}