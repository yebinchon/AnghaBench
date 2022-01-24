#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct itimerspec {int dummy; } ;
struct TYPE_4__ {scalar_t__ still_running; int /*<<< orphan*/  tfd; int /*<<< orphan*/  multi; } ;
typedef  TYPE_1__ GlobalInfo ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int CURL_CSELECT_IN ; 
 int CURL_CSELECT_OUT ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct itimerspec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(GlobalInfo *g, int fd, int revents)
{
  CURLMcode rc;
  struct itimerspec its;

  int action = ((revents & EPOLLIN) ? CURL_CSELECT_IN : 0) |
               ((revents & EPOLLOUT) ? CURL_CSELECT_OUT : 0);

  rc = FUNC1(g->multi, fd, action, &g->still_running);
  FUNC3("event_cb: curl_multi_socket_action", rc);

  FUNC0(g);
  if(g->still_running <= 0) {
    FUNC2(MSG_OUT, "last transfer done, kill timeout\n");
    FUNC4(&its, 0, sizeof(struct itimerspec));
    FUNC5(g->tfd, 0, &its, NULL);
  }
}