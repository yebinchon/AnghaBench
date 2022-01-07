
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {void* data; } ;
struct TYPE_13__ {void* data; } ;
struct TYPE_17__ {int blksize; int requested_blksize; int local_addr; int sockfd; int error; int state; struct connectdata* conn; TYPE_4__ spacket; TYPE_3__ rpacket; } ;
typedef TYPE_7__ tftp_state_data_t ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_16__ {void* bound; } ;
struct TYPE_11__ {TYPE_7__* tftpc; } ;
struct connectdata {TYPE_9__* data; TYPE_6__ bits; TYPE_5__* ip_addr; int * sock; TYPE_1__ proto; } ;
typedef int buffer ;
struct TYPE_12__ {scalar_t__ tftp_blksize; } ;
struct TYPE_18__ {TYPE_2__ set; } ;
struct TYPE_15__ {int ai_addrlen; scalar_t__ ai_family; } ;
typedef int CURLcode ;
typedef scalar_t__ CURL_SA_FAMILY_T ;


 int CURLE_COULDNT_CONNECT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_TFTP_ILLEGAL ;
 int Curl_pgrsStartNow (TYPE_9__*) ;
 int Curl_strerror (int ,char*,int) ;
 size_t FIRSTSOCKET ;
 int SOCKERRNO ;
 int STRERROR_LEN ;
 int TFTP_BLKSIZE_DEFAULT ;
 int TFTP_BLKSIZE_MAX ;
 int TFTP_BLKSIZE_MIN ;
 int TFTP_ERR_NONE ;
 int TFTP_STATE_START ;
 void* TRUE ;
 int bind (int ,struct sockaddr*,int ) ;
 void* calloc (int,int) ;
 int connclose (struct connectdata*,char*) ;
 int failf (TYPE_9__*,char*,int ) ;
 int tftp_set_timeouts (TYPE_7__*) ;

__attribute__((used)) static CURLcode tftp_connect(struct connectdata *conn, bool *done)
{
  tftp_state_data_t *state;
  int blksize;
  int need_blksize;

  blksize = TFTP_BLKSIZE_DEFAULT;

  state = conn->proto.tftpc = calloc(1, sizeof(tftp_state_data_t));
  if(!state)
    return CURLE_OUT_OF_MEMORY;


  if(conn->data->set.tftp_blksize) {
    blksize = (int)conn->data->set.tftp_blksize;
    if(blksize > TFTP_BLKSIZE_MAX || blksize < TFTP_BLKSIZE_MIN)
      return CURLE_TFTP_ILLEGAL;
  }

  need_blksize = blksize;

  if(need_blksize < TFTP_BLKSIZE_DEFAULT)
    need_blksize = TFTP_BLKSIZE_DEFAULT;

  if(!state->rpacket.data) {
    state->rpacket.data = calloc(1, need_blksize + 2 + 2);

    if(!state->rpacket.data)
      return CURLE_OUT_OF_MEMORY;
  }

  if(!state->spacket.data) {
    state->spacket.data = calloc(1, need_blksize + 2 + 2);

    if(!state->spacket.data)
      return CURLE_OUT_OF_MEMORY;
  }



  connclose(conn, "TFTP");

  state->conn = conn;
  state->sockfd = state->conn->sock[FIRSTSOCKET];
  state->state = TFTP_STATE_START;
  state->error = TFTP_ERR_NONE;
  state->blksize = TFTP_BLKSIZE_DEFAULT;
  state->requested_blksize = blksize;

  ((struct sockaddr *)&state->local_addr)->sa_family =
    (CURL_SA_FAMILY_T)(conn->ip_addr->ai_family);

  tftp_set_timeouts(state);

  if(!conn->bits.bound) {
    int rc = bind(state->sockfd, (struct sockaddr *)&state->local_addr,
                  conn->ip_addr->ai_addrlen);
    if(rc) {
      char buffer[STRERROR_LEN];
      failf(conn->data, "bind() failed; %s",
            Curl_strerror(SOCKERRNO, buffer, sizeof(buffer)));
      return CURLE_COULDNT_CONNECT;
    }
    conn->bits.bound = TRUE;
  }

  Curl_pgrsStartNow(conn->data);

  *done = TRUE;

  return CURLE_OK;
}
