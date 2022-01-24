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
struct timeval {int tv_sec; long tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; scalar_t__ easy_handle; TYPE_1__ data; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE ; 
 int /*<<< orphan*/  CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE ; 
 int /*<<< orphan*/  CURLMOPT_MAX_HOST_CONNECTIONS ; 
 int /*<<< orphan*/  CURLMOPT_MAX_PIPELINE_LENGTH ; 
 int /*<<< orphan*/  CURLMOPT_PIPELINING ; 
 int /*<<< orphan*/  CURLMOPT_PIPELINING_SERVER_BL ; 
 int /*<<< orphan*/  CURLMOPT_PIPELINING_SITE_BL ; 
 scalar_t__ CURLMSG_DONE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__* handles ; 
 int /*<<< orphan*/  libtest_arg2 ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int num_handles ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 long server_blacklist ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ *,int) ; 
 long site_blacklist ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC21 (struct timeval,struct timeval) ; 
 struct timeval FUNC22 () ; 
 scalar_t__* urltime ; 

int FUNC23(char *URL)
{
  int res = 0;
  CURLM *m = NULL;
  CURLMsg *msg; /* for picking up messages with the transfer status */
  int msgs_left; /* how many messages are left */
  int running = 0;
  int handlenum = 0;
  struct timeval last_handle_add;

  if(FUNC15(libtest_arg2) <= 0)
    goto test_cleanup;

  FUNC20();

  FUNC4(CURL_GLOBAL_ALL);

  FUNC13(m);

  FUNC2();

  FUNC14(m, CURLMOPT_PIPELINING, 1L);
  FUNC14(m, CURLMOPT_MAX_HOST_CONNECTIONS, 2L);
  FUNC14(m, CURLMOPT_MAX_PIPELINE_LENGTH, 3L);
  FUNC14(m, CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE, 15000L);
  FUNC14(m, CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE, 10000L);

  FUNC14(m, CURLMOPT_PIPELINING_SITE_BL, site_blacklist);
  FUNC14(m, CURLMOPT_PIPELINING_SERVER_BL, server_blacklist);

  last_handle_add = FUNC22();

  for(;;) {
    struct timeval interval;
    struct timeval now;
    fd_set rd, wr, exc;
    int maxfd = -99;
    long timeout;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    if(handlenum < num_handles) {
      now = FUNC22();
      if(FUNC21(now, last_handle_add) >= urltime[handlenum]) {
        FUNC11(stdout, "Adding handle %d\n", handlenum);
        FUNC19(URL, m, handlenum);
        last_handle_add = now;
        handlenum++;
      }
    }

    FUNC8(m, &running);

    FUNC1();

    /* See how the transfers went */
    do {
      msg = FUNC7(m, &msgs_left);
      if(msg && msg->msg == CURLMSG_DONE) {
        int i;

        /* Find out which handle this message is about */
        for(i = 0; i < num_handles; i++) {
          int found = (msg->easy_handle == handles[i]);
          if(found)
            break;
        }

        FUNC16("Handle %d Completed with status %d\n", i, msg->data.result);
        FUNC9(m, handles[i]);
      }
    } while(msg);

    if(handlenum == num_handles && !running) {
      break; /* done */
    }

    FUNC0(&rd);
    FUNC0(&wr);
    FUNC0(&exc);

    FUNC6(m, &rd, &wr, &exc, &maxfd);

    /* At this point, maxfd is guaranteed to be greater or equal than -1. */

    FUNC10(m, &timeout);

    if(timeout < 0)
      timeout = 1;

    interval.tv_sec = timeout / 1000;
    interval.tv_usec = (timeout % 1000) * 1000;

    interval.tv_sec = 0;
    interval.tv_usec = 1000;

    FUNC18(maxfd + 1, &rd, &wr, &exc, &interval);

    FUNC1();
  }

test_cleanup:

  FUNC17();

  /* undocumented cleanup sequence - type UB */

  FUNC5(m);
  FUNC3();

  FUNC12();
  return res;
}