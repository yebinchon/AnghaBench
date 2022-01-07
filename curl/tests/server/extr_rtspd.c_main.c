
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct httprequest {scalar_t__ testno; int partno; scalar_t__ open; void* pipelining; void* sin6_port; int sin6_addr; void* sin6_family; void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct TYPE_4__ {int sa; struct httprequest sa6; struct httprequest sa4; } ;
typedef TYPE_2__ srvr_sockaddr_union_t ;
typedef int req ;
typedef int flag ;
typedef scalar_t__ curl_socket_t ;


 void* AF_INET ;
 void* AF_INET6 ;
 scalar_t__ CURL_SOCKET_BAD ;
 unsigned short DEFAULT_PORT ;
 scalar_t__ DOCNUMBER_CONNECT ;
 scalar_t__ DOCNUMBER_QUIT ;
 void* FALSE ;
 int INADDR_ANY ;
 int IPPROTO_TCP ;
 int SERVERLOGS_LOCK ;
 int SOCKERRNO ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 void* TRUE ;
 scalar_t__ accept (scalar_t__,int *,int *) ;
 int atexit (int ) ;
 int bind (scalar_t__,int *,int) ;
 int clear_advisor_read_lock (int ) ;
 unsigned short curlx_ultous (unsigned long) ;
 int exit_signal ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ get_request (scalar_t__,struct httprequest*) ;
 scalar_t__ getpid () ;
 scalar_t__ got_exit_signal ;
 void* htons (unsigned short) ;
 int in6addr_any ;
 int install_signal_handlers () ;
 char* ipv_inuse ;
 int listen (scalar_t__,int) ;
 int logmsg (char*,...) ;
 int memset (struct httprequest*,int ,int) ;
 char* path ;
 void* prevbounce ;
 int prevpartno ;
 int prevtestno ;
 int printf (char*,char*) ;
 int puts (char*) ;
 int raise (int ) ;
 int restore_signal_handlers () ;
 int sclose (scalar_t__) ;
 int send_doc (scalar_t__,struct httprequest*) ;
 char* serverlogfile ;
 int serverlogslocked ;
 int set_advisor_read_lock (int ) ;
 int setsockopt (scalar_t__,int ,int ,void*,int) ;
 scalar_t__ socket (void*,int ,int ) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strerror (int) ;
 int strlen (char*) ;
 unsigned long strtoul (char*,char**,int) ;
 int unlink (char const*) ;
 void* use_ipv6 ;
 int win32_cleanup ;
 int win32_init () ;
 int write_pidfile (char const*) ;

int main(int argc, char *argv[])
{
  srvr_sockaddr_union_t me;
  curl_socket_t sock = CURL_SOCKET_BAD;
  curl_socket_t msgsock = CURL_SOCKET_BAD;
  int wrotepidfile = 0;
  int flag;
  unsigned short port = DEFAULT_PORT;
  const char *pidname = ".rtsp.pid";
  struct httprequest req;
  int rc;
  int error;
  int arg = 1;
  long pid;

  memset(&req, 0, sizeof(req));

  while(argc>arg) {
    if(!strcmp("--version", argv[arg])) {
      printf("rtspd IPv4%s"
             "\n"
             ,



             ""

             );
      return 0;
    }
    else if(!strcmp("--pidfile", argv[arg])) {
      arg++;
      if(argc>arg)
        pidname = argv[arg++];
    }
    else if(!strcmp("--logfile", argv[arg])) {
      arg++;
      if(argc>arg)
        serverlogfile = argv[arg++];
    }
    else if(!strcmp("--ipv4", argv[arg])) {




      arg++;
    }
    else if(!strcmp("--ipv6", argv[arg])) {




      arg++;
    }
    else if(!strcmp("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = strtoul(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + strlen(argv[arg])) ||
           (ulnum < 1025UL) || (ulnum > 65535UL)) {
          fprintf(stderr, "rtspd: invalid --port argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        port = curlx_ultous(ulnum);
        arg++;
      }
    }
    else if(!strcmp("--srcdir", argv[arg])) {
      arg++;
      if(argc>arg) {
        path = argv[arg];
        arg++;
      }
    }
    else {
      puts("Usage: rtspd [option]\n"
           " --version\n"
           " --logfile [file]\n"
           " --pidfile [file]\n"
           " --ipv4\n"
           " --ipv6\n"
           " --port [port]\n"
           " --srcdir [path]");
      return 0;
    }
  }






  install_signal_handlers();

  pid = (long)getpid();




    sock = socket(AF_INET, SOCK_STREAM, 0);





  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    logmsg("Error creating socket: (%d) %s",
           error, strerror(error));
    goto server_cleanup;
  }

  flag = 1;
  if(0 != setsockopt(sock, SOL_SOCKET, SO_REUSEADDR,
            (void *)&flag, sizeof(flag))) {
    error = SOCKERRNO;
    logmsg("setsockopt(SO_REUSEADDR) failed with error: (%d) %s",
           error, strerror(error));
    goto server_cleanup;
  }




    memset(&me.sa4, 0, sizeof(me.sa4));
    me.sa4.sin_family = AF_INET;
    me.sa4.sin_addr.s_addr = INADDR_ANY;
    me.sa4.sin_port = htons(port);
    rc = bind(sock, &me.sa, sizeof(me.sa4));
  if(0 != rc) {
    error = SOCKERRNO;
    logmsg("Error binding socket on port %hu: (%d) %s",
           port, error, strerror(error));
    goto server_cleanup;
  }

  logmsg("Running %s version on port %d", ipv_inuse, (int)port);


  rc = listen(sock, 5);
  if(0 != rc) {
    error = SOCKERRNO;
    logmsg("listen() failed with error: (%d) %s",
           error, strerror(error));
    goto server_cleanup;
  }






  wrotepidfile = write_pidfile(pidname);
  if(!wrotepidfile)
    goto server_cleanup;

  for(;;) {
    msgsock = accept(sock, ((void*)0), ((void*)0));

    if(got_exit_signal)
      break;
    if(CURL_SOCKET_BAD == msgsock) {
      error = SOCKERRNO;
      logmsg("MAJOR ERROR: accept() failed with error: (%d) %s",
             error, strerror(error));
      break;
    }







    set_advisor_read_lock(SERVERLOGS_LOCK);
    serverlogslocked = 1;

    logmsg("====> Client connect");
    req.pipelining = FALSE;

    do {
      if(got_exit_signal)
        break;

      if(get_request(msgsock, &req))

        break;

      if(prevbounce) {

        if((req.testno == prevtestno) &&
           (req.partno == prevpartno)) {
          req.partno++;
          logmsg("BOUNCE part number to %ld", req.partno);
        }
        else {
          prevbounce = FALSE;
          prevtestno = -1;
          prevpartno = -1;
        }
      }

      send_doc(msgsock, &req);
      if(got_exit_signal)
        break;

      if((req.testno < 0) && (req.testno != DOCNUMBER_CONNECT)) {
        logmsg("special request received, no persistency");
        break;
      }
      if(!req.open) {
        logmsg("instructed to close connection after server-reply");
        break;
      }

      if(req.open)
        logmsg("=> persistent connection request ended, awaits new request");

    } while(req.open || (req.testno == DOCNUMBER_CONNECT));

    if(got_exit_signal)
      break;

    logmsg("====> Client disconnect");
    sclose(msgsock);
    msgsock = CURL_SOCKET_BAD;

    if(serverlogslocked) {
      serverlogslocked = 0;
      clear_advisor_read_lock(SERVERLOGS_LOCK);
    }

    if(req.testno == DOCNUMBER_QUIT)
      break;
  }

server_cleanup:

  if((msgsock != sock) && (msgsock != CURL_SOCKET_BAD))
    sclose(msgsock);

  if(sock != CURL_SOCKET_BAD)
    sclose(sock);

  if(got_exit_signal)
    logmsg("signalled to die");

  if(wrotepidfile)
    unlink(pidname);

  if(serverlogslocked) {
    serverlogslocked = 0;
    clear_advisor_read_lock(SERVERLOGS_LOCK);
  }

  restore_signal_handlers();

  if(got_exit_signal) {
    logmsg("========> %s rtspd (port: %d pid: %ld) exits with signal (%d)",
           ipv_inuse, (int)port, pid, exit_signal);





    raise(exit_signal);
  }

  logmsg("========> rtspd quits");
  return 0;
}
