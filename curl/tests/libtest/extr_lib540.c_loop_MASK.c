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
struct timeval {int tv_sec; int tv_usec; } ;
struct curl_slist {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {scalar_t__ result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; int /*<<< orphan*/ * easy_handle; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLMSG_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INT_MAX ; 
 int NUM_HANDLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** eh ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,char const*,char const*,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC12(int num, CURLM *cm, const char *url, const char *userpwd,
                struct curl_slist *headers)
{
  CURLMsg *msg;
  long L;
  int Q, U = -1;
  fd_set R, W, E;
  struct timeval T;
  int res = 0;

  res = FUNC6(num, cm, url, userpwd, headers);
  if(res)
    return res;

  while(U) {

    int M = -99;

    FUNC8(cm, &U);
    if(res)
      return res;

    FUNC11();
    if(res)
      return res;

    if(U) {
      FUNC0(&R);
      FUNC0(&W);
      FUNC0(&E);

      FUNC7(cm, &R, &W, &E, &M);
      if(res)
        return res;

      /* At this point, M is guaranteed to be greater or equal than -1. */

      FUNC9(cm, &L);
      if(res)
        return res;

      /* At this point, L is guaranteed to be greater or equal than -1. */

      if(L != -1) {
        int itimeout = (L > (long)INT_MAX) ? INT_MAX : (int)L;
        T.tv_sec = itimeout/1000;
        T.tv_usec = (itimeout%1000)*1000;
      }
      else {
        T.tv_sec = 5;
        T.tv_usec = 0;
      }

      FUNC10(M + 1, &R, &W, &E, &T);
      if(res)
        return res;
    }

    while((msg = FUNC3(cm, &Q)) != NULL) {
      if(msg->msg == CURLMSG_DONE) {
        int i;
        CURL *e = msg->easy_handle;
        FUNC5(stderr, "R: %d - %s\n", (int)msg->data.result,
                FUNC2(msg->data.result));
        FUNC4(cm, e);
        FUNC1(e);
        for(i = 0; i < NUM_HANDLES; i++) {
          if(eh[i] == e) {
            eh[i] = NULL;
            break;
          }
        }
      }
      else
        FUNC5(stderr, "E: CURLMsg (%d)\n", (int)msg->msg);
    }

    FUNC11();
    if(res)
      return res;
  }

  return 0; /* success */
}