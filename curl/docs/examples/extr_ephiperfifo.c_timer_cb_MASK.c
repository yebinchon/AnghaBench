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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ssize_t ;
struct TYPE_4__ {int tfd; int /*<<< orphan*/  still_running; int /*<<< orphan*/  multi; } ;
typedef  TYPE_1__ GlobalInfo ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_SOCKET_TIMEOUT ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(GlobalInfo* g, int revents)
{
  CURLMcode rc;
  uint64_t count = 0;
  ssize_t err = 0;

  err = FUNC5(g->tfd, &count, sizeof(uint64_t));
  if(err == -1) {
    /* Note that we may call the timer callback even if the timerfd isn't
     * readable. It's possible that there are multiple events stored in the
     * epoll buffer (i.e. the timer may have fired multiple times). The
     * event count is cleared after the first call so future events in the
     * epoll buffer will fail to read from the timer. */
    if(errno == EAGAIN) {
      FUNC2(MSG_OUT, "EAGAIN on tfd %d\n", g->tfd);
      return;
    }
  }
  if(err != sizeof(uint64_t)) {
    FUNC2(stderr, "read(tfd) == %zd", err);
    FUNC4("read(tfd)");
  }

  rc = FUNC1(g->multi,
                                  CURL_SOCKET_TIMEOUT, 0, &g->still_running);
  FUNC3("timer_cb: curl_multi_socket_action", rc);
  FUNC0(g);
}