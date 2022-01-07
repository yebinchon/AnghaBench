
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httprequest {char* reqbuf; int offset; int cl; scalar_t__ done_processing; scalar_t__ skip; } ;
typedef scalar_t__ ssize_t ;
typedef int curl_socket_t ;


 int EAGAIN ;
 int EWOULDBLOCK ;
 scalar_t__ ProcessRequest (struct httprequest*) ;
 int REQBUFSIZ ;
 int SOCKERRNO ;
 scalar_t__ got_exit_signal ;
 int logmsg (char*,...) ;
 scalar_t__ sread (int ,char*,int) ;
 int storerequest (char*,size_t) ;
 int strerror (int) ;

__attribute__((used)) static int get_request(curl_socket_t sock, struct httprequest *req)
{
  int fail = 0;
  char *reqbuf = req->reqbuf;
  ssize_t got = 0;
  int overflow = 0;

  if(req->offset >= REQBUFSIZ-1) {

    overflow = 1;
  }
  else {
    if(req->skip)



      got = sread(sock, reqbuf + req->offset, req->cl);
    else
      got = sread(sock, reqbuf + req->offset, REQBUFSIZ-1 - req->offset);

    if(got_exit_signal)
      return -1;
    if(got == 0) {
      logmsg("Connection closed by client");
      fail = 1;
    }
    else if(got < 0) {
      int error = SOCKERRNO;
      if(EAGAIN == error || EWOULDBLOCK == error) {

        return 0;
      }
      logmsg("recv() returned error: (%d) %s", error, strerror(error));
      fail = 1;
    }
    if(fail) {

      reqbuf[req->offset] = '\0';
      storerequest(reqbuf, req->offset);
      return -1;
    }

    logmsg("Read %zd bytes", got);

    req->offset += (size_t)got;
    reqbuf[req->offset] = '\0';

    req->done_processing = ProcessRequest(req);
    if(got_exit_signal)
      return -1;
  }

  if(overflow || (req->offset == REQBUFSIZ-1 && got > 0)) {
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


  if(fail || req->done_processing)
    storerequest(reqbuf, req->offset);
  if(got_exit_signal)
    return -1;

  return fail ? -1 : 1;
}
