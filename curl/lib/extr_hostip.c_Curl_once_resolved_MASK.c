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
struct TYPE_2__ {int /*<<< orphan*/ * dns; } ;
struct connectdata {int /*<<< orphan*/  data; TYPE_1__ async; int /*<<< orphan*/ * dns_entry; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct connectdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct connectdata*,int*) ; 
 int /*<<< orphan*/  TRUE ; 

CURLcode FUNC2(struct connectdata *conn,
                            bool *protocol_done)
{
  CURLcode result;

  if(conn->async.dns) {
    conn->dns_entry = conn->async.dns;
    conn->async.dns = NULL;
  }

  result = FUNC1(conn, protocol_done);

  if(result)
    /* We're not allowed to return failure with memory left allocated
       in the connectdata struct, free those here */
    FUNC0(conn->data, conn, TRUE); /* close the connection */

  return result;
}