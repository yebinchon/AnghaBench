#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  multi; } ;
typedef  TYPE_1__ GlobalInfo ;
typedef  int /*<<< orphan*/  GMainLoop ;
typedef  int /*<<< orphan*/  GIOChannel ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_SOCKETDATA ; 
 int /*<<< orphan*/  CURLMOPT_SOCKETFUNCTION ; 
 int /*<<< orphan*/  CURLMOPT_TIMERDATA ; 
 int /*<<< orphan*/  CURLMOPT_TIMERFUNCTION ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_IO_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  fifo_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int) ; 
 int FUNC8 () ; 
 TYPE_1__* sock_cb ; 
 TYPE_1__* update_timeout_cb ; 

int FUNC9(int argc, char **argv)
{
  GlobalInfo *g;
  GMainLoop*gmain;
  int fd;
  GIOChannel* ch;
  g = FUNC7(sizeof(GlobalInfo));

  fd = FUNC8();
  ch = FUNC4(fd);
  FUNC3(ch, G_IO_IN, fifo_cb, g);
  gmain = FUNC5(NULL, FALSE);
  g->multi = FUNC1();
  FUNC2(g->multi, CURLMOPT_SOCKETFUNCTION, sock_cb);
  FUNC2(g->multi, CURLMOPT_SOCKETDATA, g);
  FUNC2(g->multi, CURLMOPT_TIMERFUNCTION, update_timeout_cb);
  FUNC2(g->multi, CURLMOPT_TIMERDATA, g);

  /* we don't call any curl_multi_socket*() function yet as we have no handles
     added! */

  FUNC6(gmain);
  FUNC0(g->multi);
  return 0;
}