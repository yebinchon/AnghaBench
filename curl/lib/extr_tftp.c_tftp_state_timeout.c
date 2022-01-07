
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_4__ {scalar_t__ max_time; scalar_t__ rx_time; scalar_t__ retry_time; int state; int error; } ;
typedef TYPE_2__ tftp_state_data_t ;
typedef int tftp_event_t ;
struct TYPE_3__ {scalar_t__ tftpc; } ;
struct connectdata {int data; TYPE_1__ proto; } ;


 int DEBUGF (int ) ;
 int TFTP_ERR_TIMEOUT ;
 int TFTP_EVENT_NONE ;
 int TFTP_EVENT_TIMEOUT ;
 int TFTP_STATE_FIN ;
 int infof (int ,char*,long,long) ;
 int time (scalar_t__*) ;

__attribute__((used)) static long tftp_state_timeout(struct connectdata *conn, tftp_event_t *event)
{
  time_t current;
  tftp_state_data_t *state = (tftp_state_data_t *)conn->proto.tftpc;

  if(event)
    *event = TFTP_EVENT_NONE;

  time(&current);
  if(current > state->max_time) {
    DEBUGF(infof(conn->data, "timeout: %ld > %ld\n",
                 (long)current, (long)state->max_time));
    state->error = TFTP_ERR_TIMEOUT;
    state->state = TFTP_STATE_FIN;
    return 0;
  }
  if(current > state->rx_time + state->retry_time) {
    if(event)
      *event = TFTP_EVENT_TIMEOUT;
    time(&state->rx_time);
  }




  return (long)(state->max_time - current);
}
