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
typedef  int /*<<< orphan*/  weare ;
struct httprequest {int rcmd; int open; int testno; int writedelay; scalar_t__ partno; scalar_t__ close; scalar_t__ connect_request; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  partbuf ;
typedef  int /*<<< orphan*/  msgbuf ;
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  DOCNUMBER_404 133 
#define  DOCNUMBER_QUIT 132 
#define  DOCNUMBER_WERULEZ 131 
 scalar_t__ EAGAIN ; 
 int EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int FALSE ; 
#define  RCMD_IDLE 130 
#define  RCMD_NORMALREQ 129 
#define  RCMD_STREAM 128 
 char* RESPONSE_DUMP ; 
 char* RESPONSE_PROXY_DUMP ; 
 scalar_t__ SOCKERRNO ; 
 char const* STREAMTHIS ; 
 void* TRUE ; 
 char* doc404 ; 
 char* docquit ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC4 (char**,size_t*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ got_exit_signal ; 
 scalar_t__ is_proxy ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 int prevbounce ; 
 scalar_t__ prevpartno ; 
 int prevtestno ; 
 int FUNC8 (char*,char*,char*,int*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 size_t FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 size_t FUNC14 (int /*<<< orphan*/ ,char const*,size_t) ; 
 char* FUNC15 (int) ; 
 scalar_t__ use_gopher ; 
 int FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(curl_socket_t sock, struct httprequest *req)
{
  ssize_t written;
  size_t count;
  const char *buffer;
  char *ptr = NULL;
  FILE *stream;
  char *cmd = NULL;
  size_t cmdsize = 0;
  FILE *dump;
  bool persistent = TRUE;
  bool sendfailure = FALSE;
  size_t responsesize;
  int error = 0;
  int res;
  const char *responsedump = is_proxy?RESPONSE_PROXY_DUMP:RESPONSE_DUMP;
  static char weare[256];

  switch(req->rcmd) {
  default:
  case RCMD_NORMALREQ:
    break; /* continue with business as usual */
  case RCMD_STREAM:
#define STREAMTHIS "a string to stream 01234567890\n"
    count = FUNC12(STREAMTHIS);
    for(;;) {
      written = FUNC14(sock, STREAMTHIS, count);
      if(got_exit_signal)
        return -1;
      if(written != (ssize_t)count) {
        FUNC6("Stopped streaming");
        break;
      }
    }
    return -1;
  case RCMD_IDLE:
    /* Do nothing. Sit idle. Pretend it rains. */
    return 0;
  }

  req->open = FALSE;

  if(req->testno < 0) {
    size_t msglen;
    char msgbuf[64];

    switch(req->testno) {
    case DOCNUMBER_QUIT:
      FUNC6("Replying to QUIT");
      buffer = docquit;
      break;
    case DOCNUMBER_WERULEZ:
      /* we got a "friends?" question, reply back that we sure are */
      FUNC6("Identifying ourselves as friends");
      FUNC7(msgbuf, sizeof(msgbuf), "WE ROOLZ: %ld\r\n", (long)FUNC5());
      msglen = FUNC12(msgbuf);
      if(use_gopher)
        FUNC7(weare, sizeof(weare), "%s", msgbuf);
      else
        FUNC7(weare, sizeof(weare),
                  "HTTP/1.1 200 OK\r\nContent-Length: %zu\r\n\r\n%s",
                  msglen, msgbuf);
      buffer = weare;
      break;
    case DOCNUMBER_404:
    default:
      FUNC6("Replying to with a 404");
      buffer = doc404;
      break;
    }

    count = FUNC12(buffer);
  }
  else {
    char partbuf[80];
    char *filename = FUNC15(req->testno);

    /* select the <data> tag for "normal" requests and the <connect> one
       for CONNECT requests (within the <reply> section) */
    const char *section = req->connect_request?"connect":"data";

    if(req->partno)
      FUNC7(partbuf, sizeof(partbuf), "%s%ld", section, req->partno);
    else
      FUNC7(partbuf, sizeof(partbuf), "%s", section);

    FUNC6("Send response test%ld section <%s>", req->testno, partbuf);

    stream = FUNC1(filename, "rb");
    if(!stream) {
      error = errno;
      FUNC6("fopen() failed with error: %d %s", error, FUNC11(error));
      FUNC6("  [3] Error opening file: %s", filename);
      return 0;
    }
    else {
      error = FUNC4(&ptr, &count, "reply", partbuf, stream);
      FUNC0(stream);
      if(error) {
        FUNC6("getpart() failed with error: %d", error);
        return 0;
      }
      buffer = ptr;
    }

    if(got_exit_signal) {
      FUNC2(ptr);
      return -1;
    }

    /* re-open the same file again */
    stream = FUNC1(filename, "rb");
    if(!stream) {
      error = errno;
      FUNC6("fopen() failed with error: %d %s", error, FUNC11(error));
      FUNC6("  [4] Error opening file: %s", filename);
      FUNC2(ptr);
      return 0;
    }
    else {
      /* get the custom server control "commands" */
      error = FUNC4(&cmd, &cmdsize, "reply", "postcmd", stream);
      FUNC0(stream);
      if(error) {
        FUNC6("getpart() failed with error: %d", error);
        FUNC2(ptr);
        return 0;
      }
    }
  }

  if(got_exit_signal) {
    FUNC2(ptr);
    FUNC2(cmd);
    return -1;
  }

  /* If the word 'swsclose' is present anywhere in the reply chunk, the
     connection will be closed after the data has been sent to the requesting
     client... */
  if(FUNC13(buffer, "swsclose") || !count || req->close) {
    persistent = FALSE;
    FUNC6("connection close instruction \"swsclose\" found in response");
  }
  if(FUNC13(buffer, "swsbounce")) {
    prevbounce = TRUE;
    FUNC6("enable \"swsbounce\" in the next request");
  }
  else
    prevbounce = FALSE;

  dump = FUNC1(responsedump, "ab");
  if(!dump) {
    error = errno;
    FUNC6("fopen() failed with error: %d %s", error, FUNC11(error));
    FUNC6("  [5] Error opening file: %s", responsedump);
    FUNC2(ptr);
    FUNC2(cmd);
    return -1;
  }

  responsesize = count;
  do {
    /* Ok, we send no more than N bytes at a time, just to make sure that
       larger chunks are split up so that the client will need to do multiple
       recv() calls to get it and thus we exercise that code better */
    size_t num = count;
    if(num > 20)
      num = 20;

    retry:
    written = FUNC14(sock, buffer, num);
    if(written < 0) {
      if((EWOULDBLOCK == SOCKERRNO) || (EAGAIN == SOCKERRNO)) {
        FUNC16(10);
        goto retry;
      }
      sendfailure = TRUE;
      break;
    }

    /* write to file as well */
    FUNC3(buffer, 1, (size_t)written, dump);

    count -= written;
    buffer += written;

    if(req->writedelay) {
      int quarters = req->writedelay * 4;
      FUNC6("Pausing %d seconds", req->writedelay);
      while((quarters > 0) && !got_exit_signal) {
        quarters--;
        FUNC16(250);
      }
    }
  } while((count > 0) && !got_exit_signal);

  do {
    res = FUNC0(dump);
  } while(res && ((error = errno) == EINTR));
  if(res)
    FUNC6("Error closing file %s error: %d %s",
           responsedump, error, FUNC11(error));

  if(got_exit_signal) {
    FUNC2(ptr);
    FUNC2(cmd);
    return -1;
  }

  if(sendfailure) {
    FUNC6("Sending response failed. Only (%zu bytes) of (%zu bytes) "
           "were sent",
           responsesize-count, responsesize);
    FUNC2(ptr);
    FUNC2(cmd);
    return -1;
  }

  FUNC6("Response sent (%zu bytes) and written to %s",
         responsesize, responsedump);
  FUNC2(ptr);

  if(cmdsize > 0) {
    char command[32];
    int quarters;
    int num;
    ptr = cmd;
    do {
      if(2 == FUNC8(ptr, "%31s %d", command, &num)) {
        if(!FUNC10("wait", command)) {
          FUNC6("Told to sleep for %d seconds", num);
          quarters = num * 4;
          while((quarters > 0) && !got_exit_signal) {
            quarters--;
            res = FUNC16(250);
            if(res) {
              /* should not happen */
              error = errno;
              FUNC6("wait_ms() failed with error: (%d) %s",
                     error, FUNC11(error));
              break;
            }
          }
          if(!quarters)
            FUNC6("Continuing after sleeping %d seconds", num);
        }
        else
          FUNC6("Unknown command in reply command section");
      }
      ptr = FUNC9(ptr, '\n');
      if(ptr)
        ptr++;
      else
        ptr = NULL;
    } while(ptr && *ptr);
  }
  FUNC2(cmd);
  req->open = use_gopher?FALSE:persistent;

  prevtestno = req->testno;
  prevpartno = req->partno;

  return 0;
}