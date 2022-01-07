
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int block; int retries; int retry_max; void* state; int remote_addrlen; int remote_addr; TYPE_4__ spacket; int sockfd; int error; int rx_time; int blksize; int rbytes; int rpacket; TYPE_1__* conn; } ;
typedef TYPE_2__ tftp_state_data_t ;
typedef int tftp_event_t ;
struct sockaddr {int dummy; } ;
struct Curl_easy {int dummy; } ;
typedef int ssize_t ;
typedef int buffer ;
struct TYPE_6__ {struct Curl_easy* data; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_SEND_ERROR ;
 int CURLE_TFTP_ILLEGAL ;
 char* Curl_strerror (int ,char*,int) ;
 int NEXT_BLOCKNUM (int) ;
 int SEND_4TH_ARG ;
 int SOCKERRNO ;
 int STRERROR_LEN ;
 int TFTP_ERR_TIMEOUT ;
 int const TFTP_EVENT_ACK ;




 void* TFTP_STATE_FIN ;
 void* TFTP_STATE_RX ;
 int failf (struct Curl_easy*,char*,char*) ;
 int getrpacketblock (int *) ;
 int infof (struct Curl_easy*,char*,int,...) ;
 int sendto (int ,void*,int,int ,struct sockaddr*,int ) ;
 int setpacketblock (TYPE_4__*,unsigned short) ;
 int setpacketevent (TYPE_4__*,int const) ;
 int time (int *) ;

__attribute__((used)) static CURLcode tftp_rx(tftp_state_data_t *state, tftp_event_t event)
{
  ssize_t sbytes;
  int rblock;
  struct Curl_easy *data = state->conn->data;
  char buffer[STRERROR_LEN];

  switch(event) {

  case 131:

    rblock = getrpacketblock(&state->rpacket);
    if(NEXT_BLOCKNUM(state->block) == rblock) {

      state->retries = 0;
    }
    else if(state->block == rblock) {


      infof(data, "Received last DATA packet block %d again.\n", rblock);
    }
    else {

      infof(data,
            "Received unexpected DATA packet block %d, expecting block %d\n",
            rblock, NEXT_BLOCKNUM(state->block));
      break;
    }


    state->block = (unsigned short)rblock;
    setpacketevent(&state->spacket, TFTP_EVENT_ACK);
    setpacketblock(&state->spacket, state->block);
    sbytes = sendto(state->sockfd, (void *)state->spacket.data,
                    4, SEND_4TH_ARG,
                    (struct sockaddr *)&state->remote_addr,
                    state->remote_addrlen);
    if(sbytes < 0) {
      failf(data, "%s", Curl_strerror(SOCKERRNO, buffer, sizeof(buffer)));
      return CURLE_SEND_ERROR;
    }


    if(state->rbytes < (ssize_t)state->blksize + 4) {
      state->state = TFTP_STATE_FIN;
    }
    else {
      state->state = TFTP_STATE_RX;
    }
    time(&state->rx_time);
    break;

  case 129:

    state->block = 0;
    state->retries = 0;
    setpacketevent(&state->spacket, TFTP_EVENT_ACK);
    setpacketblock(&state->spacket, state->block);
    sbytes = sendto(state->sockfd, (void *)state->spacket.data,
                    4, SEND_4TH_ARG,
                    (struct sockaddr *)&state->remote_addr,
                    state->remote_addrlen);
    if(sbytes < 0) {
      failf(data, "%s", Curl_strerror(SOCKERRNO, buffer, sizeof(buffer)));
      return CURLE_SEND_ERROR;
    }


    state->state = TFTP_STATE_RX;
    time(&state->rx_time);
    break;

  case 128:

    state->retries++;
    infof(data,
          "Timeout waiting for block %d ACK.  Retries = %d\n",
          NEXT_BLOCKNUM(state->block), state->retries);
    if(state->retries > state->retry_max) {
      state->error = TFTP_ERR_TIMEOUT;
      state->state = TFTP_STATE_FIN;
    }
    else {

      sbytes = sendto(state->sockfd, (void *)state->spacket.data,
                      4, SEND_4TH_ARG,
                      (struct sockaddr *)&state->remote_addr,
                      state->remote_addrlen);
      if(sbytes<0) {
        failf(data, "%s", Curl_strerror(SOCKERRNO, buffer, sizeof(buffer)));
        return CURLE_SEND_ERROR;
      }
    }
    break;

  case 130:
    setpacketevent(&state->spacket, 130);
    setpacketblock(&state->spacket, state->block);
    (void)sendto(state->sockfd, (void *)state->spacket.data,
                 4, SEND_4TH_ARG,
                 (struct sockaddr *)&state->remote_addr,
                 state->remote_addrlen);


    state->state = TFTP_STATE_FIN;
    break;

  default:
    failf(data, "%s", "tftp_rx: internal error");
    return CURLE_TFTP_ILLEGAL;

  }
  return CURLE_OK;
}
