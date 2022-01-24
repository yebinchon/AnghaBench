#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  multi; int /*<<< orphan*/  evbase; int /*<<< orphan*/  timer_event; } ;
typedef  TYPE_1__ GlobalInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_SOCKETDATA ; 
 int /*<<< orphan*/  CURLMOPT_SOCKETFUNCTION ; 
 int /*<<< orphan*/  CURLMOPT_TIMERDATA ; 
 int /*<<< orphan*/  CURLMOPT_TIMERFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* multi_timer_cb ; 
 TYPE_1__* sock_cb ; 
 int /*<<< orphan*/  timer_cb ; 

int FUNC11(int argc, char **argv)
{
  GlobalInfo g;
  (void)argc;
  (void)argv;

  FUNC10(&g, 0, sizeof(GlobalInfo));
  g.evbase = FUNC6();
  FUNC9(&g);
  g.multi = FUNC2();
  FUNC8(&g.timer_event, g.evbase, timer_cb, &g);

  /* setup the generic multi interface options we want */
  FUNC3(g.multi, CURLMOPT_SOCKETFUNCTION, sock_cb);
  FUNC3(g.multi, CURLMOPT_SOCKETDATA, &g);
  FUNC3(g.multi, CURLMOPT_TIMERFUNCTION, multi_timer_cb);
  FUNC3(g.multi, CURLMOPT_TIMERDATA, &g);

  /* we don't call any curl_multi_socket*() function yet as we have no handles
     added! */

  FUNC4(g.evbase);

  /* this, of course, won't get called since only way to stop this program is
     via ctrl-C, but it is here to show how cleanup /would/ be done. */
  FUNC0(&g);
  FUNC7(&g.timer_event);
  FUNC5(g.evbase);
  FUNC1(g.multi);
  return 0;
}