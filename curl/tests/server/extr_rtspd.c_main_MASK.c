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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct httprequest {scalar_t__ testno; int partno; scalar_t__ open; void* pipelining; void* sin6_port; int /*<<< orphan*/  sin6_addr; void* sin6_family; void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa; struct httprequest sa6; struct httprequest sa4; } ;
typedef  TYPE_2__ srvr_sockaddr_union_t ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  flag ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 unsigned short DEFAULT_PORT ; 
 scalar_t__ DOCNUMBER_CONNECT ; 
 scalar_t__ DOCNUMBER_QUIT ; 
 void* FALSE ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SERVERLOGS_LOCK ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 void* TRUE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  exit_signal ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC6 (scalar_t__,struct httprequest*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ got_exit_signal ; 
 void* FUNC8 (unsigned short) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* ipv_inuse ; 
 int FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct httprequest*,int /*<<< orphan*/ ,int) ; 
 char* path ; 
 void* prevbounce ; 
 int prevpartno ; 
 int prevtestno ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,struct httprequest*) ; 
 char* serverlogfile ; 
 int serverlogslocked ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC21 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int FUNC24 (char*) ; 
 unsigned long FUNC25 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC26 (char const*) ; 
 void* use_ipv6 ; 
 int /*<<< orphan*/  win32_cleanup ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int FUNC28 (char const*) ; 

int FUNC29(int argc, char *argv[])
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

  FUNC12(&req, 0, sizeof(req));

  while(argc>arg) {
    if(!FUNC22("--version", argv[arg])) {
      FUNC13("rtspd IPv4%s"
             "\n"
             ,
#ifdef ENABLE_IPV6
             "/IPv6"
#else
             ""
#endif
             );
      return 0;
    }
    else if(!FUNC22("--pidfile", argv[arg])) {
      arg++;
      if(argc>arg)
        pidname = argv[arg++];
    }
    else if(!FUNC22("--logfile", argv[arg])) {
      arg++;
      if(argc>arg)
        serverlogfile = argv[arg++];
    }
    else if(!FUNC22("--ipv4", argv[arg])) {
#ifdef ENABLE_IPV6
      ipv_inuse = "IPv4";
      use_ipv6 = FALSE;
#endif
      arg++;
    }
    else if(!FUNC22("--ipv6", argv[arg])) {
#ifdef ENABLE_IPV6
      ipv_inuse = "IPv6";
      use_ipv6 = TRUE;
#endif
      arg++;
    }
    else if(!FUNC22("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = FUNC25(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + FUNC24(argv[arg])) ||
           (ulnum < 1025UL) || (ulnum > 65535UL)) {
          FUNC5(stderr, "rtspd: invalid --port argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        port = FUNC4(ulnum);
        arg++;
      }
    }
    else if(!FUNC22("--srcdir", argv[arg])) {
      arg++;
      if(argc>arg) {
        path = argv[arg];
        arg++;
      }
    }
    else {
      FUNC14("Usage: rtspd [option]\n"
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

#ifdef WIN32
  win32_init();
  atexit(win32_cleanup);
#endif

  FUNC9();

  pid = (long)FUNC7();

#ifdef ENABLE_IPV6
  if(!use_ipv6)
#endif
    sock = FUNC21(AF_INET, SOCK_STREAM, 0);
#ifdef ENABLE_IPV6
  else
    sock = socket(AF_INET6, SOCK_STREAM, 0);
#endif

  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    FUNC11("Error creating socket: (%d) %s",
           error, FUNC23(error));
    goto server_cleanup;
  }

  flag = 1;
  if(0 != FUNC20(sock, SOL_SOCKET, SO_REUSEADDR,
            (void *)&flag, sizeof(flag))) {
    error = SOCKERRNO;
    FUNC11("setsockopt(SO_REUSEADDR) failed with error: (%d) %s",
           error, FUNC23(error));
    goto server_cleanup;
  }

#ifdef ENABLE_IPV6
  if(!use_ipv6) {
#endif
    FUNC12(&me.sa4, 0, sizeof(me.sa4));
    me.sa4.sin_family = AF_INET;
    me.sa4.sin_addr.s_addr = INADDR_ANY;
    me.sa4.sin_port = FUNC8(port);
    rc = FUNC2(sock, &me.sa, sizeof(me.sa4));
#ifdef ENABLE_IPV6
  }
  else {
    memset(&me.sa6, 0, sizeof(me.sa6));
    me.sa6.sin6_family = AF_INET6;
    me.sa6.sin6_addr = in6addr_any;
    me.sa6.sin6_port = htons(port);
    rc = bind(sock, &me.sa, sizeof(me.sa6));
  }
#endif /* ENABLE_IPV6 */
  if(0 != rc) {
    error = SOCKERRNO;
    FUNC11("Error binding socket on port %hu: (%d) %s",
           port, error, FUNC23(error));
    goto server_cleanup;
  }

  FUNC11("Running %s version on port %d", ipv_inuse, (int)port);

  /* start accepting connections */
  rc = FUNC10(sock, 5);
  if(0 != rc) {
    error = SOCKERRNO;
    FUNC11("listen() failed with error: (%d) %s",
           error, FUNC23(error));
    goto server_cleanup;
  }

  /*
  ** As soon as this server writes its pid file the test harness will
  ** attempt to connect to this server and initiate its verification.
  */

  wrotepidfile = FUNC28(pidname);
  if(!wrotepidfile)
    goto server_cleanup;

  for(;;) {
    msgsock = FUNC0(sock, NULL, NULL);

    if(got_exit_signal)
      break;
    if(CURL_SOCKET_BAD == msgsock) {
      error = SOCKERRNO;
      FUNC11("MAJOR ERROR: accept() failed with error: (%d) %s",
             error, FUNC23(error));
      break;
    }

    /*
    ** As soon as this server acepts a connection from the test harness it
    ** must set the server logs advisor read lock to indicate that server
    ** logs should not be read until this lock is removed by this server.
    */

    FUNC19(SERVERLOGS_LOCK);
    serverlogslocked = 1;

    FUNC11("====> Client connect");

#ifdef TCP_NODELAY
    /*
     * Disable the Nagle algorithm to make it easier to send out a large
     * response in many small segments to torture the clients more.
     */
    flag = 1;
    if(setsockopt(msgsock, IPPROTO_TCP, TCP_NODELAY,
                   (void *)&flag, sizeof(flag)) == -1) {
      logmsg("====> TCP_NODELAY failed");
    }
#endif

    /* initialization of httprequest struct is done in get_request(), but due
       to pipelining treatment the pipelining struct field must be initialized
       previously to FALSE every time a new connection arrives. */

    req.pipelining = FALSE;

    do {
      if(got_exit_signal)
        break;

      if(FUNC6(msgsock, &req))
        /* non-zero means error, break out of loop */
        break;

      if(prevbounce) {
        /* bounce treatment requested */
        if((req.testno == prevtestno) &&
           (req.partno == prevpartno)) {
          req.partno++;
          FUNC11("BOUNCE part number to %ld", req.partno);
        }
        else {
          prevbounce = FALSE;
          prevtestno = -1;
          prevpartno = -1;
        }
      }

      FUNC18(msgsock, &req);
      if(got_exit_signal)
        break;

      if((req.testno < 0) && (req.testno != DOCNUMBER_CONNECT)) {
        FUNC11("special request received, no persistency");
        break;
      }
      if(!req.open) {
        FUNC11("instructed to close connection after server-reply");
        break;
      }

      if(req.open)
        FUNC11("=> persistent connection request ended, awaits new request");
      /* if we got a CONNECT, loop and get another request as well! */
    } while(req.open || (req.testno == DOCNUMBER_CONNECT));

    if(got_exit_signal)
      break;

    FUNC11("====> Client disconnect");
    FUNC17(msgsock);
    msgsock = CURL_SOCKET_BAD;

    if(serverlogslocked) {
      serverlogslocked = 0;
      FUNC3(SERVERLOGS_LOCK);
    }

    if(req.testno == DOCNUMBER_QUIT)
      break;
  }

server_cleanup:

  if((msgsock != sock) && (msgsock != CURL_SOCKET_BAD))
    FUNC17(msgsock);

  if(sock != CURL_SOCKET_BAD)
    FUNC17(sock);

  if(got_exit_signal)
    FUNC11("signalled to die");

  if(wrotepidfile)
    FUNC26(pidname);

  if(serverlogslocked) {
    serverlogslocked = 0;
    FUNC3(SERVERLOGS_LOCK);
  }

  FUNC16();

  if(got_exit_signal) {
    FUNC11("========> %s rtspd (port: %d pid: %ld) exits with signal (%d)",
           ipv_inuse, (int)port, pid, exit_signal);
    /*
     * To properly set the return status of the process we
     * must raise the same signal SIGINT or SIGTERM that we
     * caught and let the old handler take care of it.
     */
    FUNC15(exit_signal);
  }

  FUNC11("========> rtspd quits");
  return 0;
}