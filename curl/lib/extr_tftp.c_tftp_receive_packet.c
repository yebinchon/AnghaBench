
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int rbytes; int remote_addrlen; short event; TYPE_5__ rpacket; int error; int block; int remote_addr; scalar_t__ blksize; int sockfd; } ;
typedef TYPE_2__ tftp_state_data_t ;
typedef short tftp_event_t ;
typedef int tftp_error_t ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {scalar_t__ tftpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct SingleRequest {int bytecount; } ;
struct Curl_sockaddr_storage {int dummy; } ;
struct Curl_easy {struct SingleRequest req; } ;
typedef int fromaddr ;
typedef int curl_socklen_t ;
typedef int curl_off_t ;
typedef int CURLcode ;


 int CLIENTWRITE_BODY ;
 int CURLE_ABORTED_BY_CALLBACK ;
 int CURLE_OK ;
 int Curl_client_write (struct connectdata*,int ,char*,int) ;
 int Curl_pgrsSetDownloadCounter (struct Curl_easy*,int ) ;
 scalar_t__ Curl_pgrsUpdate (struct connectdata*) ;
 size_t Curl_strnlen (char*,size_t) ;
 unsigned short NEXT_BLOCKNUM (int ) ;





 short TFTP_EVENT_TIMEOUT ;

 int failf (struct Curl_easy*,char*,...) ;
 unsigned short getrpacketblock (TYPE_5__*) ;
 unsigned short getrpacketevent (TYPE_5__*) ;
 int infof (struct Curl_easy*,char*,char*) ;
 int memcpy (int *,struct Curl_sockaddr_storage*,int) ;
 scalar_t__ recvfrom (int ,void*,scalar_t__,int ,struct sockaddr*,int*) ;
 int tftp_parse_option_ack (TYPE_2__*,char const*,int) ;
 int tftp_state_machine (TYPE_2__*,int const) ;

__attribute__((used)) static CURLcode tftp_receive_packet(struct connectdata *conn)
{
  struct Curl_sockaddr_storage fromaddr;
  curl_socklen_t fromlen;
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  tftp_state_data_t *state = (tftp_state_data_t *)conn->proto.tftpc;
  struct SingleRequest *k = &data->req;


  fromlen = sizeof(fromaddr);
  state->rbytes = (int)recvfrom(state->sockfd,
                                (void *)state->rpacket.data,
                                state->blksize + 4,
                                0,
                                (struct sockaddr *)&fromaddr,
                                &fromlen);
  if(state->remote_addrlen == 0) {
    memcpy(&state->remote_addr, &fromaddr, fromlen);
    state->remote_addrlen = fromlen;
  }


  if(state->rbytes < 4) {
    failf(data, "Received too short packet");

    state->event = TFTP_EVENT_TIMEOUT;
  }
  else {

    unsigned short event = getrpacketevent(&state->rpacket);
    state->event = (tftp_event_t)event;

    switch(state->event) {
    case 132:

      if(state->rbytes > 4 &&
         (NEXT_BLOCKNUM(state->block) == getrpacketblock(&state->rpacket))) {
        result = Curl_client_write(conn, CLIENTWRITE_BODY,
                                   (char *)state->rpacket.data + 4,
                                   state->rbytes-4);
        if(result) {
          tftp_state_machine(state, 131);
          return result;
        }
        k->bytecount += state->rbytes-4;
        Curl_pgrsSetDownloadCounter(data, (curl_off_t) k->bytecount);
      }
      break;
    case 131:
    {
      unsigned short error = getrpacketblock(&state->rpacket);
      char *str = (char *)state->rpacket.data + 4;
      size_t strn = state->rbytes - 4;
      state->error = (tftp_error_t)error;
      if(Curl_strnlen(str, strn) < strn)
        infof(data, "TFTP error: %s\n", str);
      break;
    }
    case 133:
      break;
    case 130:
      result = tftp_parse_option_ack(state,
                                     (const char *)state->rpacket.data + 2,
                                     state->rbytes-2);
      if(result)
        return result;
      break;
    case 129:
    case 128:
    default:
      failf(data, "%s", "Internal error: Unexpected packet");
      break;
    }


    if(Curl_pgrsUpdate(conn)) {
      tftp_state_machine(state, 131);
      return CURLE_ABORTED_BY_CALLBACK;
    }
  }
  return result;
}
