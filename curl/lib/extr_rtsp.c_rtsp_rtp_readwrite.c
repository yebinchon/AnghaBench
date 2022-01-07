
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtsp_conn {char* rtp_buf; int rtp_bufsize; int rtp_channel; } ;
struct TYPE_3__ {struct rtsp_conn rtspc; } ;
struct connectdata {TYPE_1__ proto; } ;
struct SingleRequest {char* str; int keepon; } ;
struct TYPE_4__ {scalar_t__ rtspreq; } ;
struct Curl_easy {TYPE_2__ set; struct SingleRequest req; } ;
typedef int ssize_t ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_safefree (char*) ;
 char* Curl_saferealloc (char*,int) ;
 int DEBUGASSERT (int) ;
 int DEBUGF (int ) ;
 int FALSE ;
 int KEEP_RECV ;
 int RTP_PKT_CHANNEL (char*) ;
 int RTP_PKT_LENGTH (char*) ;
 scalar_t__ RTSPREQ_RECEIVE ;
 int TRUE ;
 int failf (struct Curl_easy*,char*) ;
 int infof (struct Curl_easy*,char*,int,...) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int rtp_client_write (struct connectdata*,char*,int) ;

__attribute__((used)) static CURLcode rtsp_rtp_readwrite(struct Curl_easy *data,
                                   struct connectdata *conn,
                                   ssize_t *nread,
                                   bool *readmore) {
  struct SingleRequest *k = &data->req;
  struct rtsp_conn *rtspc = &(conn->proto.rtspc);

  char *rtp;
  ssize_t rtp_dataleft;
  char *scratch;
  CURLcode result;

  if(rtspc->rtp_buf) {

    char *newptr = Curl_saferealloc(rtspc->rtp_buf,
                                    rtspc->rtp_bufsize + *nread);
    if(!newptr) {
      rtspc->rtp_buf = ((void*)0);
      rtspc->rtp_bufsize = 0;
      return CURLE_OUT_OF_MEMORY;
    }
    rtspc->rtp_buf = newptr;
    memcpy(rtspc->rtp_buf + rtspc->rtp_bufsize, k->str, *nread);
    rtspc->rtp_bufsize += *nread;
    rtp = rtspc->rtp_buf;
    rtp_dataleft = rtspc->rtp_bufsize;
  }
  else {

    rtp = k->str;
    rtp_dataleft = *nread;
  }

  while((rtp_dataleft > 0) &&
        (rtp[0] == '$')) {
    if(rtp_dataleft > 4) {
      int rtp_length;



      rtspc->rtp_channel = RTP_PKT_CHANNEL(rtp);


      rtp_length = RTP_PKT_LENGTH(rtp);

      if(rtp_dataleft < rtp_length + 4) {

        *readmore = TRUE;
        break;
      }


      DEBUGF(infof(data, "RTP write channel %d rtp_length %d\n",
             rtspc->rtp_channel, rtp_length));
      result = rtp_client_write(conn, &rtp[0], rtp_length + 4);
      if(result) {
        failf(data, "Got an error writing an RTP packet");
        *readmore = FALSE;
        Curl_safefree(rtspc->rtp_buf);
        rtspc->rtp_buf = ((void*)0);
        rtspc->rtp_bufsize = 0;
        return result;
      }


      rtp_dataleft -= rtp_length + 4;
      rtp += rtp_length + 4;

      if(data->set.rtspreq == RTSPREQ_RECEIVE) {



        k->keepon &= ~KEEP_RECV;
      }
    }
    else {

      *readmore = TRUE;
      break;
    }
  }

  if(rtp_dataleft != 0 && rtp[0] == '$') {
    DEBUGF(infof(data, "RTP Rewinding %zd %s\n", rtp_dataleft,
          *readmore ? "(READMORE)" : ""));


    scratch = malloc(rtp_dataleft);
    if(!scratch) {
      Curl_safefree(rtspc->rtp_buf);
      rtspc->rtp_buf = ((void*)0);
      rtspc->rtp_bufsize = 0;
      return CURLE_OUT_OF_MEMORY;
    }
    memcpy(scratch, rtp, rtp_dataleft);
    Curl_safefree(rtspc->rtp_buf);
    rtspc->rtp_buf = scratch;
    rtspc->rtp_bufsize = rtp_dataleft;


    *nread = 0;
    return CURLE_OK;
  }

  k->str += *nread - rtp_dataleft;




  if(rtp_dataleft > 0)
    DEBUGASSERT(k->str[0] == rtp[0]);

  DEBUGASSERT(rtp_dataleft <= *nread);

  *nread = rtp_dataleft;


  Curl_safefree(rtspc->rtp_buf);
  rtspc->rtp_buf = ((void*)0);
  rtspc->rtp_bufsize = 0;

  return CURLE_OK;
}
