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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct curl_slist {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; int /*<<< orphan*/ * easy_handle; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLMSG_DONE ; 
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_DNS_CACHE_TIMEOUT ; 
 int /*<<< orphan*/  CURLOPT_RESOLVE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int DNS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct curl_slist* FUNC5 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct curl_slist*) ; 
 int debug_callback ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int FUNC13(CURLM *m, char *URL, char *resolve)
{
  CURL *curls;
  struct curl_slist *resolve_list = NULL;
  int still_running;
  int res = 0;
  CURLMsg *msg;
  int msgs_left;

  resolve_list = FUNC5(resolve_list, resolve);

  FUNC7(curls);

  FUNC8(curls, CURLOPT_URL, URL);
  FUNC8(curls, CURLOPT_RESOLVE, resolve_list);
  FUNC8(curls, CURLOPT_DEBUGFUNCTION, debug_callback);
  FUNC8(curls, CURLOPT_VERBOSE, 1);
  FUNC8(curls, CURLOPT_DNS_CACHE_TIMEOUT, DNS_TIMEOUT);

  FUNC9(m, curls);
  FUNC11(m, &still_running);

  FUNC1();

  while(still_running) {
    struct timeval timeout;
    fd_set fdread, fdwrite, fdexcep;
    int maxfd = -99;

    FUNC0(&fdread);
    FUNC0(&fdwrite);
    FUNC0(&fdexcep);
    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    FUNC10(m, &fdread, &fdwrite, &fdexcep, &maxfd);
    FUNC12(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    FUNC1();
    FUNC11(m, &still_running);

    FUNC1();
  }

  do {
    msg = FUNC3(m, &msgs_left);
    if(msg && msg->msg == CURLMSG_DONE && msg->easy_handle == curls) {
      res = msg->data.result;
      break;
    }
  } while(msg);

test_cleanup:

  FUNC4(m, curls);
  FUNC2(curls);
  FUNC6(resolve_list);

  return res;
}