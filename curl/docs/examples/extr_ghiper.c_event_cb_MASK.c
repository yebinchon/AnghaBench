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
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_3__ {scalar_t__ timer_event; scalar_t__ still_running; int /*<<< orphan*/  multi; } ;
typedef  TYPE_1__ GlobalInfo ;
typedef  int GIOCondition ;
typedef  int /*<<< orphan*/  GIOChannel ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int CURL_CSELECT_IN ; 
 int CURL_CSELECT_OUT ; 
 int /*<<< orphan*/  FALSE ; 
 int G_IO_IN ; 
 int G_IO_OUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean FUNC6(GIOChannel *ch, GIOCondition condition, gpointer data)
{
  GlobalInfo *g = (GlobalInfo*) data;
  CURLMcode rc;
  int fd = FUNC3(ch);

  int action =
    ((condition & G_IO_IN) ? CURL_CSELECT_IN : 0) |
    ((condition & G_IO_OUT) ? CURL_CSELECT_OUT : 0);

  rc = FUNC2(g->multi, fd, action, &g->still_running);
  FUNC5("event_cb: curl_multi_socket_action", rc);

  FUNC1(g);
  if(g->still_running) {
    return TRUE;
  }
  else {
    FUNC0("last transfer done, kill timeout\n");
    if(g->timer_event) {
      FUNC4(g->timer_event);
    }
    return FALSE;
  }
}