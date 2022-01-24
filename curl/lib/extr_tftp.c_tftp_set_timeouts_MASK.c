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
typedef  scalar_t__ timediff_t ;
typedef  int time_t ;
struct TYPE_5__ {scalar_t__ state; int retry_max; int retry_time; scalar_t__ rx_time; scalar_t__ start_time; scalar_t__ max_time; TYPE_1__* conn; } ;
typedef  TYPE_2__ tftp_state_data_t ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OPERATION_TIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FALSE ; 
 scalar_t__ TFTP_STATE_START ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static CURLcode FUNC4(tftp_state_data_t *state)
{
  time_t maxtime, timeout;
  timediff_t timeout_ms;
  bool start = (state->state == TFTP_STATE_START) ? TRUE : FALSE;

  FUNC3(&state->start_time);

  /* Compute drop-dead time */
  timeout_ms = FUNC0(state->conn->data, NULL, start);

  if(timeout_ms < 0) {
    /* time-out, bail out, go home */
    FUNC1(state->conn->data, "Connection time-out");
    return CURLE_OPERATION_TIMEDOUT;
  }

  if(start) {

    maxtime = (time_t)(timeout_ms + 500) / 1000;
    state->max_time = state->start_time + maxtime;

    /* Set per-block timeout to total */
    timeout = maxtime;

    /* Average restart after 5 seconds */
    state->retry_max = (int)timeout/5;

    if(state->retry_max < 1)
      /* avoid division by zero below */
      state->retry_max = 1;

    /* Compute the re-start interval to suit the timeout */
    state->retry_time = (int)timeout/state->retry_max;
    if(state->retry_time<1)
      state->retry_time = 1;

  }
  else {
    if(timeout_ms > 0)
      maxtime = (time_t)(timeout_ms + 500) / 1000;
    else
      maxtime = 3600;

    state->max_time = state->start_time + maxtime;

    /* Set per-block timeout to total */
    timeout = maxtime;

    /* Average reposting an ACK after 5 seconds */
    state->retry_max = (int)timeout/5;
  }
  /* But bound the total number */
  if(state->retry_max<3)
    state->retry_max = 3;

  if(state->retry_max>50)
    state->retry_max = 50;

  /* Compute the re-ACK interval to suit the timeout */
  state->retry_time = (int)(timeout/state->retry_max);
  if(state->retry_time<1)
    state->retry_time = 1;

  FUNC2(state->conn->data,
        "set timeouts for state %d; Total %ld, retry %d maxtry %d\n",
        (int)state->state, (long)(state->max_time-state->start_time),
        state->retry_time, state->retry_max);

  /* init RX time */
  FUNC3(&state->rx_time);

  return CURLE_OK;
}