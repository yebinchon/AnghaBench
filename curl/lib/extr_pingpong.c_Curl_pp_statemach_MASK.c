#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int time_t ;
struct pingpong {scalar_t__ (* statemach_act ) (struct connectdata*) ;scalar_t__ sendleft; struct connectdata* conn; } ;
struct connectdata {struct Curl_easy* data; int /*<<< orphan*/ * sock; } ;
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_ABORTED_BY_CALLBACK ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OPERATION_TIMEDOUT ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct connectdata*) ; 
 scalar_t__ FUNC2 (struct pingpong*) ; 
 int FUNC3 (struct pingpong*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct connectdata*,size_t) ; 
 size_t FIRSTSOCKET ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,char*) ; 
 scalar_t__ FUNC8 (struct connectdata*) ; 

CURLcode FUNC9(struct pingpong *pp, bool block,
                           bool disconnecting)
{
  struct connectdata *conn = pp->conn;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  int rc;
  time_t interval_ms;
  time_t timeout_ms = FUNC3(pp, disconnecting);
  struct Curl_easy *data = conn->data;
  CURLcode result = CURLE_OK;

  if(timeout_ms <= 0) {
    FUNC7(data, "server response timeout");
    return CURLE_OPERATION_TIMEDOUT; /* already too little time */
  }

  if(block) {
    interval_ms = 1000;  /* use 1 second timeout intervals */
    if(timeout_ms < interval_ms)
      interval_ms = timeout_ms;
  }
  else
    interval_ms = 0; /* immediate */

  if(FUNC6(conn, FIRSTSOCKET))
    rc = 1;
  else if(FUNC2(pp))
    /* We are receiving and there is data in the cache so just read it */
    rc = 1;
  else if(!pp->sendleft && FUNC6(conn, FIRSTSOCKET))
    /* We are receiving and there is data ready in the SSL library */
    rc = 1;
  else
    rc = FUNC4(pp->sendleft?CURL_SOCKET_BAD:sock, /* reading */
                           CURL_SOCKET_BAD,
                           pp->sendleft?sock:CURL_SOCKET_BAD, /* writing */
                           interval_ms);

  if(block) {
    /* if we didn't wait, we don't have to spend time on this now */
    if(FUNC1(conn))
      result = CURLE_ABORTED_BY_CALLBACK;
    else
      result = FUNC5(data, FUNC0());

    if(result)
      return result;
  }

  if(rc == -1) {
    FUNC7(data, "select/poll error");
    result = CURLE_OUT_OF_MEMORY;
  }
  else if(rc)
    result = pp->statemach_act(conn);

  return result;
}