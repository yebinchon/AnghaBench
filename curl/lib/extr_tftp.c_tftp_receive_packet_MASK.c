#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int rbytes; int remote_addrlen; short event; TYPE_5__ rpacket; int /*<<< orphan*/  error; int /*<<< orphan*/  block; int /*<<< orphan*/  remote_addr; scalar_t__ blksize; int /*<<< orphan*/  sockfd; } ;
typedef  TYPE_2__ tftp_state_data_t ;
typedef  short tftp_event_t ;
typedef  int /*<<< orphan*/  tftp_error_t ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {scalar_t__ tftpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct SingleRequest {int bytecount; } ;
struct Curl_sockaddr_storage {int dummy; } ;
struct Curl_easy {struct SingleRequest req; } ;
typedef  int /*<<< orphan*/  fromaddr ;
typedef  int curl_socklen_t ;
typedef  int /*<<< orphan*/  curl_off_t ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENTWRITE_BODY ; 
 int /*<<< orphan*/  CURLE_ABORTED_BY_CALLBACK ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct connectdata*) ; 
 size_t FUNC3 (char*,size_t) ; 
 unsigned short FUNC4 (int /*<<< orphan*/ ) ; 
#define  TFTP_EVENT_ACK 133 
#define  TFTP_EVENT_DATA 132 
#define  TFTP_EVENT_ERROR 131 
#define  TFTP_EVENT_OACK 130 
#define  TFTP_EVENT_RRQ 129 
 short TFTP_EVENT_TIMEOUT ; 
#define  TFTP_EVENT_WRQ 128 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,char*,...) ; 
 unsigned short FUNC6 (TYPE_5__*) ; 
 unsigned short FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct Curl_sockaddr_storage*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int const) ; 

__attribute__((used)) static CURLcode FUNC13(struct connectdata *conn)
{
  struct Curl_sockaddr_storage fromaddr;
  curl_socklen_t        fromlen;
  CURLcode              result = CURLE_OK;
  struct Curl_easy  *data = conn->data;
  tftp_state_data_t     *state = (tftp_state_data_t *)conn->proto.tftpc;
  struct SingleRequest  *k = &data->req;

  /* Receive the packet */
  fromlen = sizeof(fromaddr);
  state->rbytes = (int)FUNC10(state->sockfd,
                                (void *)state->rpacket.data,
                                state->blksize + 4,
                                0,
                                (struct sockaddr *)&fromaddr,
                                &fromlen);
  if(state->remote_addrlen == 0) {
    FUNC9(&state->remote_addr, &fromaddr, fromlen);
    state->remote_addrlen = fromlen;
  }

  /* Sanity check packet length */
  if(state->rbytes < 4) {
    FUNC5(data, "Received too short packet");
    /* Not a timeout, but how best to handle it? */
    state->event = TFTP_EVENT_TIMEOUT;
  }
  else {
    /* The event is given by the TFTP packet time */
    unsigned short event = FUNC7(&state->rpacket);
    state->event = (tftp_event_t)event;

    switch(state->event) {
    case TFTP_EVENT_DATA:
      /* Don't pass to the client empty or retransmitted packets */
      if(state->rbytes > 4 &&
         (FUNC4(state->block) == FUNC6(&state->rpacket))) {
        result = FUNC0(conn, CLIENTWRITE_BODY,
                                   (char *)state->rpacket.data + 4,
                                   state->rbytes-4);
        if(result) {
          FUNC12(state, TFTP_EVENT_ERROR);
          return result;
        }
        k->bytecount += state->rbytes-4;
        FUNC1(data, (curl_off_t) k->bytecount);
      }
      break;
    case TFTP_EVENT_ERROR:
    {
      unsigned short error = FUNC6(&state->rpacket);
      char *str = (char *)state->rpacket.data + 4;
      size_t strn = state->rbytes - 4;
      state->error = (tftp_error_t)error;
      if(FUNC3(str, strn) < strn)
        FUNC8(data, "TFTP error: %s\n", str);
      break;
    }
    case TFTP_EVENT_ACK:
      break;
    case TFTP_EVENT_OACK:
      result = FUNC11(state,
                                     (const char *)state->rpacket.data + 2,
                                     state->rbytes-2);
      if(result)
        return result;
      break;
    case TFTP_EVENT_RRQ:
    case TFTP_EVENT_WRQ:
    default:
      FUNC5(data, "%s", "Internal error: Unexpected packet");
      break;
    }

    /* Update the progress meter */
    if(FUNC2(conn)) {
      FUNC12(state, TFTP_EVENT_ERROR);
      return CURLE_ABORTED_BY_CALLBACK;
    }
  }
  return result;
}