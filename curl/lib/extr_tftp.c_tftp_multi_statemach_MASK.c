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
struct TYPE_5__ {scalar_t__ state; scalar_t__ event; int /*<<< orphan*/  sockfd; } ;
typedef  TYPE_2__ tftp_state_data_t ;
typedef  scalar_t__ tftp_event_t ;
struct TYPE_4__ {scalar_t__ tftpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OPERATION_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FALSE ; 
 int SOCKERRNO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int STRERROR_LEN ; 
 scalar_t__ TFTP_EVENT_ERROR ; 
 scalar_t__ TFTP_EVENT_NONE ; 
 scalar_t__ TFTP_STATE_FIN ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*,char*,...) ; 
 scalar_t__ FUNC4 (struct connectdata*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 long FUNC6 (struct connectdata*,scalar_t__*) ; 

__attribute__((used)) static CURLcode FUNC7(struct connectdata *conn, bool *done)
{
  tftp_event_t          event;
  CURLcode              result = CURLE_OK;
  struct Curl_easy  *data = conn->data;
  tftp_state_data_t     *state = (tftp_state_data_t *)conn->proto.tftpc;
  long                  timeout_ms = FUNC6(conn, &event);

  *done = FALSE;

  if(timeout_ms <= 0) {
    FUNC3(data, "TFTP response timeout");
    return CURLE_OPERATION_TIMEDOUT;
  }
  if(event != TFTP_EVENT_NONE) {
    result = FUNC5(state, event);
    if(result)
      return result;
    *done = (state->state == TFTP_STATE_FIN) ? TRUE : FALSE;
    if(*done)
      /* Tell curl we're done */
      FUNC0(data, -1, -1, FALSE, -1);
  }
  else {
    /* no timeouts to handle, check our socket */
    int rc = FUNC2(state->sockfd, 0);

    if(rc == -1) {
      /* bail out */
      int error = SOCKERRNO;
      char buffer[STRERROR_LEN];
      FUNC3(data, "%s", FUNC1(error, buffer, sizeof(buffer)));
      state->event = TFTP_EVENT_ERROR;
    }
    else if(rc != 0) {
      result = FUNC4(conn);
      if(result)
        return result;
      result = FUNC5(state, state->event);
      if(result)
        return result;
      *done = (state->state == TFTP_STATE_FIN) ? TRUE : FALSE;
      if(*done)
        /* Tell curl we're done */
        FUNC0(data, -1, -1, FALSE, -1);
    }
    /* if rc == 0, then select() timed out */
  }

  return result;
}