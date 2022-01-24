#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct httprequest {char* reqbuf; int checkindex; size_t offset; int cl; void* pipelining; scalar_t__ pipe; scalar_t__ skip; scalar_t__ rtp_buffersize; int /*<<< orphan*/ * rtp_buffer; scalar_t__ prot_version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  rcmd; void* ntlm; void* digest; void* auth; void* auth_req; int /*<<< orphan*/  open; scalar_t__ partno; int /*<<< orphan*/  testno; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  curl_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOCNUMBER_NOTHING ; 
 void* FALSE ; 
 int FUNC0 (struct httprequest*) ; 
 int /*<<< orphan*/  RCMD_NORMALREQ ; 
 int REQBUFSIZ ; 
 int /*<<< orphan*/  RPROT_NONE ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ got_exit_signal ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(curl_socket_t sock, struct httprequest *req)
{
  int error;
  int fail = 0;
  int done_processing = 0;
  char *reqbuf = req->reqbuf;
  ssize_t got = 0;

  char *pipereq = NULL;
  size_t pipereq_length = 0;

  if(req->pipelining) {
    pipereq = reqbuf + req->checkindex;
    pipereq_length = req->offset - req->checkindex;
  }

  /*** Init the httprequest structure properly for the upcoming request ***/

  req->checkindex = 0;
  req->offset = 0;
  req->testno = DOCNUMBER_NOTHING;
  req->partno = 0;
  req->open = TRUE;
  req->auth_req = FALSE;
  req->auth = FALSE;
  req->cl = 0;
  req->digest = FALSE;
  req->ntlm = FALSE;
  req->pipe = 0;
  req->skip = 0;
  req->rcmd = RCMD_NORMALREQ;
  req->protocol = RPROT_NONE;
  req->prot_version = 0;
  req->pipelining = FALSE;
  req->rtp_buffer = NULL;
  req->rtp_buffersize = 0;

  /*** end of httprequest init ***/

  while(!done_processing && (req->offset < REQBUFSIZ-1)) {
    if(pipereq_length && pipereq) {
      FUNC3(reqbuf, pipereq, pipereq_length);
      got = FUNC1(pipereq_length);
      pipereq_length = 0;
    }
    else {
      if(req->skip)
        /* we are instructed to not read the entire thing, so we make sure to
           only read what we're supposed to and NOT read the enire thing the
           client wants to send! */
        got = FUNC4(sock, reqbuf + req->offset, req->cl);
      else
        got = FUNC4(sock, reqbuf + req->offset, REQBUFSIZ-1 - req->offset);
    }
    if(got_exit_signal)
      return 1;
    if(got == 0) {
      FUNC2("Connection closed by client");
      fail = 1;
    }
    else if(got < 0) {
      error = SOCKERRNO;
      FUNC2("recv() returned error: (%d) %s", error, FUNC6(error));
      fail = 1;
    }
    if(fail) {
      /* dump the request received so far to the external file */
      reqbuf[req->offset] = '\0';
      FUNC5(reqbuf, req->offset);
      return 1;
    }

    FUNC2("Read %zd bytes", got);

    req->offset += (size_t)got;
    reqbuf[req->offset] = '\0';

    done_processing = FUNC0(req);
    if(got_exit_signal)
      return 1;
    if(done_processing && req->pipe) {
      FUNC2("Waiting for another piped request");
      done_processing = 0;
      req->pipe--;
    }
  }

  if((req->offset == REQBUFSIZ-1) && (got > 0)) {
    FUNC2("Request would overflow buffer, closing connection");
    /* dump request received so far to external file anyway */
    reqbuf[REQBUFSIZ-1] = '\0';
    fail = 1;
  }
  else if(req->offset > REQBUFSIZ-1) {
    FUNC2("Request buffer overflow, closing connection");
    /* dump request received so far to external file anyway */
    reqbuf[REQBUFSIZ-1] = '\0';
    fail = 1;
  }
  else
    reqbuf[req->offset] = '\0';

  /* dump the request to an external file */
  FUNC5(reqbuf, req->pipelining ? req->checkindex : req->offset);
  if(got_exit_signal)
    return 1;

  return fail; /* return 0 on success */
}