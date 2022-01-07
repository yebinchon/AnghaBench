
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httprequest {char* reqbuf; int checkindex; size_t offset; int cl; void* pipelining; scalar_t__ pipe; scalar_t__ skip; scalar_t__ rtp_buffersize; int * rtp_buffer; scalar_t__ prot_version; int protocol; int rcmd; void* ntlm; void* digest; void* auth; void* auth_req; int open; scalar_t__ partno; int testno; } ;
typedef scalar_t__ ssize_t ;
typedef int curl_socket_t ;


 int DOCNUMBER_NOTHING ;
 void* FALSE ;
 int ProcessRequest (struct httprequest*) ;
 int RCMD_NORMALREQ ;
 int REQBUFSIZ ;
 int RPROT_NONE ;
 int SOCKERRNO ;
 int TRUE ;
 scalar_t__ curlx_uztosz (size_t) ;
 scalar_t__ got_exit_signal ;
 int logmsg (char*,...) ;
 int memmove (char*,char*,size_t) ;
 scalar_t__ sread (int ,char*,int) ;
 int storerequest (char*,size_t) ;
 int strerror (int) ;

__attribute__((used)) static int get_request(curl_socket_t sock, struct httprequest *req)
{
  int error;
  int fail = 0;
  int done_processing = 0;
  char *reqbuf = req->reqbuf;
  ssize_t got = 0;

  char *pipereq = ((void*)0);
  size_t pipereq_length = 0;

  if(req->pipelining) {
    pipereq = reqbuf + req->checkindex;
    pipereq_length = req->offset - req->checkindex;
  }



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
  req->rtp_buffer = ((void*)0);
  req->rtp_buffersize = 0;



  while(!done_processing && (req->offset < REQBUFSIZ-1)) {
    if(pipereq_length && pipereq) {
      memmove(reqbuf, pipereq, pipereq_length);
      got = curlx_uztosz(pipereq_length);
      pipereq_length = 0;
    }
    else {
      if(req->skip)



        got = sread(sock, reqbuf + req->offset, req->cl);
      else
        got = sread(sock, reqbuf + req->offset, REQBUFSIZ-1 - req->offset);
    }
    if(got_exit_signal)
      return 1;
    if(got == 0) {
      logmsg("Connection closed by client");
      fail = 1;
    }
    else if(got < 0) {
      error = SOCKERRNO;
      logmsg("recv() returned error: (%d) %s", error, strerror(error));
      fail = 1;
    }
    if(fail) {

      reqbuf[req->offset] = '\0';
      storerequest(reqbuf, req->offset);
      return 1;
    }

    logmsg("Read %zd bytes", got);

    req->offset += (size_t)got;
    reqbuf[req->offset] = '\0';

    done_processing = ProcessRequest(req);
    if(got_exit_signal)
      return 1;
    if(done_processing && req->pipe) {
      logmsg("Waiting for another piped request");
      done_processing = 0;
      req->pipe--;
    }
  }

  if((req->offset == REQBUFSIZ-1) && (got > 0)) {
    logmsg("Request would overflow buffer, closing connection");

    reqbuf[REQBUFSIZ-1] = '\0';
    fail = 1;
  }
  else if(req->offset > REQBUFSIZ-1) {
    logmsg("Request buffer overflow, closing connection");

    reqbuf[REQBUFSIZ-1] = '\0';
    fail = 1;
  }
  else
    reqbuf[req->offset] = '\0';


  storerequest(reqbuf, req->pipelining ? req->checkindex : req->offset);
  if(got_exit_signal)
    return 1;

  return fail;
}
