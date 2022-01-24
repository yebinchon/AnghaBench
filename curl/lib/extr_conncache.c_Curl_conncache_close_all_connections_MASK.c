#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct connectdata {TYPE_2__* data; } ;
struct conncache {TYPE_2__* closure_handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  hostcache; } ;
struct TYPE_7__ {TYPE_1__ dns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct connectdata* FUNC4 (struct conncache*) ; 
 int /*<<< orphan*/  FUNC5 (struct connectdata*,char*) ; 
 int /*<<< orphan*/  pipe_st ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct conncache *connc)
{
  struct connectdata *conn;

  conn = FUNC4(connc);
  while(conn) {
    FUNC3(pipe_st);
    conn->data = connc->closure_handle;

    FUNC6(conn->data, &pipe_st);
    /* This will remove the connection from the cache */
    FUNC5(conn, "kill all");
    (void)FUNC1(connc->closure_handle, conn, FALSE);
    FUNC7(&pipe_st);

    conn = FUNC4(connc);
  }

  if(connc->closure_handle) {
    FUNC3(pipe_st);
    FUNC6(connc->closure_handle, &pipe_st);

    FUNC2(connc->closure_handle,
                         connc->closure_handle->dns.hostcache);
    FUNC0(&connc->closure_handle);
    FUNC7(&pipe_st);
  }
}