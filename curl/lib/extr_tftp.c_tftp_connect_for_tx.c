
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int state; TYPE_1__* conn; } ;
typedef TYPE_2__ tftp_state_data_t ;
typedef int tftp_event_t ;
struct Curl_easy {int dummy; } ;
struct TYPE_6__ {struct Curl_easy* data; } ;
typedef scalar_t__ CURLcode ;


 int TFTP_STATE_TX ;
 int infof (struct Curl_easy*,char*,char*) ;
 scalar_t__ tftp_set_timeouts (TYPE_2__*) ;
 scalar_t__ tftp_tx (TYPE_2__*,int ) ;

__attribute__((used)) static CURLcode tftp_connect_for_tx(tftp_state_data_t *state,
                                    tftp_event_t event)
{
  CURLcode result;

  struct Curl_easy *data = state->conn->data;

  infof(data, "%s\n", "Connected for transmit");

  state->state = TFTP_STATE_TX;
  result = tftp_set_timeouts(state);
  if(result)
    return result;
  return tftp_tx(state, event);
}
