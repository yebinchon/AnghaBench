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
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; int /*<<< orphan*/ * easy_handle; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLINFO_PRIVATE ; 
 int /*<<< orphan*/  CURLMOPT_MAXCONNECTS ; 
 scalar_t__ CURLMSG_DONE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int EXIT_SUCCESS ; 
 unsigned int MAX_PARALLEL ; 
 unsigned int NUM_URLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(void)
{
  CURLM *cm;
  CURLMsg *msg;
  unsigned int transfers = 0;
  int msgs_left = -1;
  int still_alive = 1;

  FUNC5(CURL_GLOBAL_ALL);
  cm = FUNC8();

  /* Limit the amount of simultaneous connections curl should allow: */
  FUNC11(cm, CURLMOPT_MAXCONNECTS, (long)MAX_PARALLEL);

  for(transfers = 0; transfers < MAX_PARALLEL; transfers++)
    FUNC0(cm, transfers);

  do {
    FUNC9(cm, &still_alive);

    while((msg = FUNC7(cm, &msgs_left))) {
      if(msg->msg == CURLMSG_DONE) {
        char *url;
        CURL *e = msg->easy_handle;
        FUNC2(msg->easy_handle, CURLINFO_PRIVATE, &url);
        FUNC13(stderr, "R: %ld - %s <%s>\n",
                msg->data.result, FUNC3(msg->data.result), url);
        FUNC10(cm, e);
        FUNC1(e);
      }
      else {
        FUNC13(stderr, "E: CURLMsg (%ld)\n", msg->msg);
      }
      if(transfers < NUM_URLS)
        FUNC0(cm, transfers++);
    }
    if(still_alive)
      FUNC12(cm, NULL, 0, 1000, NULL);

  } while(still_alive || (transfers < NUM_URLS));

  FUNC6(cm);
  FUNC4();

  return EXIT_SUCCESS;
}