
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
typedef int time_t ;
struct TYPE_5__ {scalar_t__ state; int retry_max; int retry_time; scalar_t__ rx_time; scalar_t__ start_time; scalar_t__ max_time; TYPE_1__* conn; } ;
typedef TYPE_2__ tftp_state_data_t ;
struct TYPE_4__ {int data; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OPERATION_TIMEDOUT ;
 scalar_t__ Curl_timeleft (int ,int *,int) ;
 int FALSE ;
 scalar_t__ TFTP_STATE_START ;
 int TRUE ;
 int failf (int ,char*) ;
 int infof (int ,char*,int,long,int,int) ;
 int time (scalar_t__*) ;

__attribute__((used)) static CURLcode tftp_set_timeouts(tftp_state_data_t *state)
{
  time_t maxtime, timeout;
  timediff_t timeout_ms;
  bool start = (state->state == TFTP_STATE_START) ? TRUE : FALSE;

  time(&state->start_time);


  timeout_ms = Curl_timeleft(state->conn->data, ((void*)0), start);

  if(timeout_ms < 0) {

    failf(state->conn->data, "Connection time-out");
    return CURLE_OPERATION_TIMEDOUT;
  }

  if(start) {

    maxtime = (time_t)(timeout_ms + 500) / 1000;
    state->max_time = state->start_time + maxtime;


    timeout = maxtime;


    state->retry_max = (int)timeout/5;

    if(state->retry_max < 1)

      state->retry_max = 1;


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


    timeout = maxtime;


    state->retry_max = (int)timeout/5;
  }

  if(state->retry_max<3)
    state->retry_max = 3;

  if(state->retry_max>50)
    state->retry_max = 50;


  state->retry_time = (int)(timeout/state->retry_max);
  if(state->retry_time<1)
    state->retry_time = 1;

  infof(state->conn->data,
        "set timeouts for state %d; Total %ld, retry %d maxtry %d\n",
        (int)state->state, (long)(state->max_time-state->start_time),
        state->retry_time, state->retry_max);


  time(&state->rx_time);

  return CURLE_OK;
}
