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
struct TYPE_3__ {scalar_t__ still_running; int /*<<< orphan*/  timer_event; int /*<<< orphan*/  multi; } ;
typedef  TYPE_1__ GlobalInfo ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int CURL_CSELECT_IN ; 
 int CURL_CSELECT_OUT ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int fd, short kind, void *userp)
{
  GlobalInfo *g = (GlobalInfo*) userp;
  CURLMcode rc;

  int action =
    ((kind & EV_READ) ? CURL_CSELECT_IN : 0) |
    ((kind & EV_WRITE) ? CURL_CSELECT_OUT : 0);

  rc = FUNC1(g->multi, fd, action, &g->still_running);
  FUNC5("event_cb: curl_multi_socket_action", rc);

  FUNC0(g);
  if(g->still_running <= 0) {
    FUNC4(MSG_OUT, "last transfer done, kill timeout\n");
    if(FUNC3(&g->timer_event, NULL)) {
      FUNC2(&g->timer_event);
    }
  }
}