
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int weare ;
struct httprequest {int rcmd; int open; int testno; int writedelay; scalar_t__ partno; scalar_t__ close; scalar_t__ connect_request; } ;
typedef size_t ssize_t ;
typedef int partbuf ;
typedef int msgbuf ;
typedef int curl_socket_t ;
typedef int FILE ;





 scalar_t__ EAGAIN ;
 int EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int FALSE ;



 char* RESPONSE_DUMP ;
 char* RESPONSE_PROXY_DUMP ;
 scalar_t__ SOCKERRNO ;
 char const* STREAMTHIS ;
 void* TRUE ;
 char* doc404 ;
 char* docquit ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int fwrite (char const*,int,size_t,int *) ;
 int getpart (char**,size_t*,char*,char*,int *) ;
 scalar_t__ getpid () ;
 scalar_t__ got_exit_signal ;
 scalar_t__ is_proxy ;
 int logmsg (char*,...) ;
 int msnprintf (char*,int,char*,...) ;
 int prevbounce ;
 scalar_t__ prevpartno ;
 int prevtestno ;
 int sscanf (char*,char*,char*,int*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strerror (int) ;
 size_t strlen (char const*) ;
 scalar_t__ strstr (char const*,char*) ;
 size_t swrite (int ,char const*,size_t) ;
 char* test2file (int) ;
 scalar_t__ use_gopher ;
 int wait_ms (int) ;

__attribute__((used)) static int send_doc(curl_socket_t sock, struct httprequest *req)
{
  ssize_t written;
  size_t count;
  const char *buffer;
  char *ptr = ((void*)0);
  FILE *stream;
  char *cmd = ((void*)0);
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
  case 129:
    break;
  case 128:

    count = strlen("a string to stream 01234567890\n");
    for(;;) {
      written = swrite(sock, "a string to stream 01234567890\n", count);
      if(got_exit_signal)
        return -1;
      if(written != (ssize_t)count) {
        logmsg("Stopped streaming");
        break;
      }
    }
    return -1;
  case 130:

    return 0;
  }

  req->open = FALSE;

  if(req->testno < 0) {
    size_t msglen;
    char msgbuf[64];

    switch(req->testno) {
    case 132:
      logmsg("Replying to QUIT");
      buffer = docquit;
      break;
    case 131:

      logmsg("Identifying ourselves as friends");
      msnprintf(msgbuf, sizeof(msgbuf), "WE ROOLZ: %ld\r\n", (long)getpid());
      msglen = strlen(msgbuf);
      if(use_gopher)
        msnprintf(weare, sizeof(weare), "%s", msgbuf);
      else
        msnprintf(weare, sizeof(weare),
                  "HTTP/1.1 200 OK\r\nContent-Length: %zu\r\n\r\n%s",
                  msglen, msgbuf);
      buffer = weare;
      break;
    case 133:
    default:
      logmsg("Replying to with a 404");
      buffer = doc404;
      break;
    }

    count = strlen(buffer);
  }
  else {
    char partbuf[80];
    char *filename = test2file(req->testno);



    const char *section = req->connect_request?"connect":"data";

    if(req->partno)
      msnprintf(partbuf, sizeof(partbuf), "%s%ld", section, req->partno);
    else
      msnprintf(partbuf, sizeof(partbuf), "%s", section);

    logmsg("Send response test%ld section <%s>", req->testno, partbuf);

    stream = fopen(filename, "rb");
    if(!stream) {
      error = errno;
      logmsg("fopen() failed with error: %d %s", error, strerror(error));
      logmsg("  [3] Error opening file: %s", filename);
      return 0;
    }
    else {
      error = getpart(&ptr, &count, "reply", partbuf, stream);
      fclose(stream);
      if(error) {
        logmsg("getpart() failed with error: %d", error);
        return 0;
      }
      buffer = ptr;
    }

    if(got_exit_signal) {
      free(ptr);
      return -1;
    }


    stream = fopen(filename, "rb");
    if(!stream) {
      error = errno;
      logmsg("fopen() failed with error: %d %s", error, strerror(error));
      logmsg("  [4] Error opening file: %s", filename);
      free(ptr);
      return 0;
    }
    else {

      error = getpart(&cmd, &cmdsize, "reply", "postcmd", stream);
      fclose(stream);
      if(error) {
        logmsg("getpart() failed with error: %d", error);
        free(ptr);
        return 0;
      }
    }
  }

  if(got_exit_signal) {
    free(ptr);
    free(cmd);
    return -1;
  }




  if(strstr(buffer, "swsclose") || !count || req->close) {
    persistent = FALSE;
    logmsg("connection close instruction \"swsclose\" found in response");
  }
  if(strstr(buffer, "swsbounce")) {
    prevbounce = TRUE;
    logmsg("enable \"swsbounce\" in the next request");
  }
  else
    prevbounce = FALSE;

  dump = fopen(responsedump, "ab");
  if(!dump) {
    error = errno;
    logmsg("fopen() failed with error: %d %s", error, strerror(error));
    logmsg("  [5] Error opening file: %s", responsedump);
    free(ptr);
    free(cmd);
    return -1;
  }

  responsesize = count;
  do {



    size_t num = count;
    if(num > 20)
      num = 20;

    retry:
    written = swrite(sock, buffer, num);
    if(written < 0) {
      if((EWOULDBLOCK == SOCKERRNO) || (EAGAIN == SOCKERRNO)) {
        wait_ms(10);
        goto retry;
      }
      sendfailure = TRUE;
      break;
    }


    fwrite(buffer, 1, (size_t)written, dump);

    count -= written;
    buffer += written;

    if(req->writedelay) {
      int quarters = req->writedelay * 4;
      logmsg("Pausing %d seconds", req->writedelay);
      while((quarters > 0) && !got_exit_signal) {
        quarters--;
        wait_ms(250);
      }
    }
  } while((count > 0) && !got_exit_signal);

  do {
    res = fclose(dump);
  } while(res && ((error = errno) == EINTR));
  if(res)
    logmsg("Error closing file %s error: %d %s",
           responsedump, error, strerror(error));

  if(got_exit_signal) {
    free(ptr);
    free(cmd);
    return -1;
  }

  if(sendfailure) {
    logmsg("Sending response failed. Only (%zu bytes) of (%zu bytes) "
           "were sent",
           responsesize-count, responsesize);
    free(ptr);
    free(cmd);
    return -1;
  }

  logmsg("Response sent (%zu bytes) and written to %s",
         responsesize, responsedump);
  free(ptr);

  if(cmdsize > 0) {
    char command[32];
    int quarters;
    int num;
    ptr = cmd;
    do {
      if(2 == sscanf(ptr, "%31s %d", command, &num)) {
        if(!strcmp("wait", command)) {
          logmsg("Told to sleep for %d seconds", num);
          quarters = num * 4;
          while((quarters > 0) && !got_exit_signal) {
            quarters--;
            res = wait_ms(250);
            if(res) {

              error = errno;
              logmsg("wait_ms() failed with error: (%d) %s",
                     error, strerror(error));
              break;
            }
          }
          if(!quarters)
            logmsg("Continuing after sleeping %d seconds", num);
        }
        else
          logmsg("Unknown command in reply command section");
      }
      ptr = strchr(ptr, '\n');
      if(ptr)
        ptr++;
      else
        ptr = ((void*)0);
    } while(ptr && *ptr);
  }
  free(cmd);
  req->open = use_gopher?FALSE:persistent;

  prevtestno = req->testno;
  prevpartno = req->partno;

  return 0;
}
