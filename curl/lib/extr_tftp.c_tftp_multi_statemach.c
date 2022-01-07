
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; scalar_t__ event; int sockfd; } ;
typedef TYPE_2__ tftp_state_data_t ;
typedef scalar_t__ tftp_event_t ;
struct TYPE_4__ {scalar_t__ tftpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OPERATION_TIMEDOUT ;
 int Curl_setup_transfer (struct Curl_easy*,int,int,int,int) ;
 int Curl_strerror (int,char*,int) ;
 int FALSE ;
 int SOCKERRNO ;
 int SOCKET_READABLE (int ,int ) ;
 int STRERROR_LEN ;
 scalar_t__ TFTP_EVENT_ERROR ;
 scalar_t__ TFTP_EVENT_NONE ;
 scalar_t__ TFTP_STATE_FIN ;
 int TRUE ;
 int failf (struct Curl_easy*,char*,...) ;
 scalar_t__ tftp_receive_packet (struct connectdata*) ;
 scalar_t__ tftp_state_machine (TYPE_2__*,scalar_t__) ;
 long tftp_state_timeout (struct connectdata*,scalar_t__*) ;

__attribute__((used)) static CURLcode tftp_multi_statemach(struct connectdata *conn, bool *done)
{
  tftp_event_t event;
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  tftp_state_data_t *state = (tftp_state_data_t *)conn->proto.tftpc;
  long timeout_ms = tftp_state_timeout(conn, &event);

  *done = FALSE;

  if(timeout_ms <= 0) {
    failf(data, "TFTP response timeout");
    return CURLE_OPERATION_TIMEDOUT;
  }
  if(event != TFTP_EVENT_NONE) {
    result = tftp_state_machine(state, event);
    if(result)
      return result;
    *done = (state->state == TFTP_STATE_FIN) ? TRUE : FALSE;
    if(*done)

      Curl_setup_transfer(data, -1, -1, FALSE, -1);
  }
  else {

    int rc = SOCKET_READABLE(state->sockfd, 0);

    if(rc == -1) {

      int error = SOCKERRNO;
      char buffer[STRERROR_LEN];
      failf(data, "%s", Curl_strerror(error, buffer, sizeof(buffer)));
      state->event = TFTP_EVENT_ERROR;
    }
    else if(rc != 0) {
      result = tftp_receive_packet(conn);
      if(result)
        return result;
      result = tftp_state_machine(state, state->event);
      if(result)
        return result;
      *done = (state->state == TFTP_STATE_FIN) ? TRUE : FALSE;
      if(*done)

        Curl_setup_transfer(data, -1, -1, FALSE, -1);
    }

  }

  return result;
}
