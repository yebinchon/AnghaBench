#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtsp_conn {char* rtp_buf; int rtp_bufsize; int /*<<< orphan*/  rtp_channel; } ;
struct TYPE_3__ {struct rtsp_conn rtspc; } ;
struct connectdata {TYPE_1__ proto; } ;
struct SingleRequest {char* str; int /*<<< orphan*/  keepon; } ;
struct TYPE_4__ {scalar_t__ rtspreq; } ;
struct Curl_easy {TYPE_2__ set; struct SingleRequest req; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  KEEP_RECV ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ RTSPREQ_RECEIVE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,char*,int,...) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct connectdata*,char*,int) ; 

__attribute__((used)) static CURLcode FUNC11(struct Curl_easy *data,
                                   struct connectdata *conn,
                                   ssize_t *nread,
                                   bool *readmore) {
  struct SingleRequest *k = &data->req;
  struct rtsp_conn *rtspc = &(conn->proto.rtspc);

  char *rtp; /* moving pointer to rtp data */
  ssize_t rtp_dataleft; /* how much data left to parse in this round */
  char *scratch;
  CURLcode result;

  if(rtspc->rtp_buf) {
    /* There was some leftover data the last time. Merge buffers */
    char *newptr = FUNC1(rtspc->rtp_buf,
                                    rtspc->rtp_bufsize + *nread);
    if(!newptr) {
      rtspc->rtp_buf = NULL;
      rtspc->rtp_bufsize = 0;
      return CURLE_OUT_OF_MEMORY;
    }
    rtspc->rtp_buf = newptr;
    FUNC9(rtspc->rtp_buf + rtspc->rtp_bufsize, k->str, *nread);
    rtspc->rtp_bufsize += *nread;
    rtp = rtspc->rtp_buf;
    rtp_dataleft = rtspc->rtp_bufsize;
  }
  else {
    /* Just parse the request buffer directly */
    rtp = k->str;
    rtp_dataleft = *nread;
  }

  while((rtp_dataleft > 0) &&
        (rtp[0] == '$')) {
    if(rtp_dataleft > 4) {
      int rtp_length;

      /* Parse the header */
      /* The channel identifier immediately follows and is 1 byte */
      rtspc->rtp_channel = FUNC4(rtp);

      /* The length is two bytes */
      rtp_length = FUNC5(rtp);

      if(rtp_dataleft < rtp_length + 4) {
        /* Need more - incomplete payload*/
        *readmore = TRUE;
        break;
      }
      /* We have the full RTP interleaved packet
       * Write out the header including the leading '$' */
      FUNC3(FUNC7(data, "RTP write channel %d rtp_length %d\n",
             rtspc->rtp_channel, rtp_length));
      result = FUNC10(conn, &rtp[0], rtp_length + 4);
      if(result) {
        FUNC6(data, "Got an error writing an RTP packet");
        *readmore = FALSE;
        FUNC0(rtspc->rtp_buf);
        rtspc->rtp_buf = NULL;
        rtspc->rtp_bufsize = 0;
        return result;
      }

      /* Move forward in the buffer */
      rtp_dataleft -= rtp_length + 4;
      rtp += rtp_length + 4;

      if(data->set.rtspreq == RTSPREQ_RECEIVE) {
        /* If we are in a passive receive, give control back
         * to the app as often as we can.
         */
        k->keepon &= ~KEEP_RECV;
      }
    }
    else {
      /* Need more - incomplete header */
      *readmore = TRUE;
      break;
    }
  }

  if(rtp_dataleft != 0 && rtp[0] == '$') {
    FUNC3(FUNC7(data, "RTP Rewinding %zd %s\n", rtp_dataleft,
          *readmore ? "(READMORE)" : ""));

    /* Store the incomplete RTP packet for a "rewind" */
    scratch = FUNC8(rtp_dataleft);
    if(!scratch) {
      FUNC0(rtspc->rtp_buf);
      rtspc->rtp_buf = NULL;
      rtspc->rtp_bufsize = 0;
      return CURLE_OUT_OF_MEMORY;
    }
    FUNC9(scratch, rtp, rtp_dataleft);
    FUNC0(rtspc->rtp_buf);
    rtspc->rtp_buf = scratch;
    rtspc->rtp_bufsize = rtp_dataleft;

    /* As far as the transfer is concerned, this data is consumed */
    *nread = 0;
    return CURLE_OK;
  }
  /* Fix up k->str to point just after the last RTP packet */
  k->str += *nread - rtp_dataleft;

  /* either all of the data has been read or...
   * rtp now points at the next byte to parse
   */
  if(rtp_dataleft > 0)
    FUNC2(k->str[0] == rtp[0]);

  FUNC2(rtp_dataleft <= *nread); /* sanity check */

  *nread = rtp_dataleft;

  /* If we get here, we have finished with the leftover/merge buffer */
  FUNC0(rtspc->rtp_buf);
  rtspc->rtp_buf = NULL;
  rtspc->rtp_bufsize = 0;

  return CURLE_OK;
}