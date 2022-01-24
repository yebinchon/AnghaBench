#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* data; } ;
struct TYPE_9__ {TYPE_2__* data; } ;
struct TYPE_10__ {int /*<<< orphan*/  multi; int /*<<< orphan*/  loop; TYPE_1__ fifo_event; TYPE_7__ timer_event; } ;
typedef  TYPE_2__ GlobalInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_SOCKETDATA ; 
 int /*<<< orphan*/  CURLMOPT_SOCKETFUNCTION ; 
 int /*<<< orphan*/  CURLMOPT_TIMERDATA ; 
 int /*<<< orphan*/  CURLMOPT_TIMERFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* multi_timer_cb ; 
 TYPE_2__* sock_cb ; 
 int /*<<< orphan*/  timer_cb ; 

int FUNC8(int argc, char **argv)
{
  GlobalInfo g;
  (void)argc;
  (void)argv;

  FUNC7(&g, 0, sizeof(GlobalInfo));
  g.loop = FUNC3(0);

  FUNC6(&g);
  g.multi = FUNC1();

  FUNC5(&g.timer_event, timer_cb, 0., 0.);
  g.timer_event.data = &g;
  g.fifo_event.data = &g;
  FUNC2(g.multi, CURLMOPT_SOCKETFUNCTION, sock_cb);
  FUNC2(g.multi, CURLMOPT_SOCKETDATA, &g);
  FUNC2(g.multi, CURLMOPT_TIMERFUNCTION, multi_timer_cb);
  FUNC2(g.multi, CURLMOPT_TIMERDATA, &g);

  /* we don't call any curl_multi_socket*() function yet as we have no handles
     added! */

  FUNC4(g.loop, 0);
  FUNC0(g.multi);
  return 0;
}