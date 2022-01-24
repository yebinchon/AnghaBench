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
struct httprequest {char* reqbuf; int offset; int cl; scalar_t__ done_processing; scalar_t__ skip; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  curl_socket_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EWOULDBLOCK ; 
 scalar_t__ FUNC0 (struct httprequest*) ; 
 int REQBUFSIZ ; 
 int SOCKERRNO ; 
 scalar_t__ got_exit_signal ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(curl_socket_t sock, struct httprequest *req)
{
  int fail = 0;
  char *reqbuf = req->reqbuf;
  ssize_t got = 0;
  int overflow = 0;

  if(req->offset >= REQBUFSIZ-1) {
    /* buffer is already full; do nothing */
    overflow = 1;
  }
  else {
    if(req->skip)
      /* we are instructed to not read the entire thing, so we make sure to
         only read what we're supposed to and NOT read the enire thing the
         client wants to send! */
      got = FUNC2(sock, reqbuf + req->offset, req->cl);
    else
      got = FUNC2(sock, reqbuf + req->offset, REQBUFSIZ-1 - req->offset);

    if(got_exit_signal)
      return -1;
    if(got == 0) {
      FUNC1("Connection closed by client");
      fail = 1;
    }
    else if(got < 0) {
      int error = SOCKERRNO;
      if(EAGAIN == error || EWOULDBLOCK == error) {
        /* nothing to read at the moment */
        return 0;
      }
      FUNC1("recv() returned error: (%d) %s", error, FUNC4(error));
      fail = 1;
    }
    if(fail) {
      /* dump the request received so far to the external file */
      reqbuf[req->offset] = '\0';
      FUNC3(reqbuf, req->offset);
      return -1;
    }

    FUNC1("Read %zd bytes", got);

    req->offset += (size_t)got;
    reqbuf[req->offset] = '\0';

    req->done_processing = FUNC0(req);
    if(got_exit_signal)
      return -1;
  }

  if(overflow || (req->offset == REQBUFSIZ-1 && got > 0)) {
    FUNC1("Request would overflow buffer, closing connection");
    /* dump request received so far to external file anyway */
    reqbuf[REQBUFSIZ-1] = '\0';
    fail = 1;
  }
  else if(req->offset > REQBUFSIZ-1) {
    FUNC1("Request buffer overflow, closing connection");
    /* dump request received so far to external file anyway */
    reqbuf[REQBUFSIZ-1] = '\0';
    fail = 1;
  }
  else
    reqbuf[req->offset] = '\0';

  /* at the end of a request dump it to an external file */
  if(fail || req->done_processing)
    FUNC3(reqbuf, req->offset);
  if(got_exit_signal)
    return -1;

  return fail ? -1 : 1;
}