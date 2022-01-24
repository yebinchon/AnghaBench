#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_5__ {TYPE_3__ sin6_addr; void* sin6_port; void* sin6_family; TYPE_3__ sin_addr; void* sin_port; void* sin_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa; TYPE_2__ sa6; TYPE_2__ sa4; } ;
typedef  TYPE_1__ srvr_sockaddr_union_t ;
typedef  enum sockmode { ____Placeholder_sockmode } sockmode ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 int ACTIVE ; 
 void* AF_INET ; 
 void* AF_INET6 ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (void*,char const*,TYPE_3__*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  O_BINARY ; 
 int PASSIVE_LISTEN ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* bind_only ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int connectport ; 
 void* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  exit_signal ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ got_exit_signal ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* ipv_inuse ; 
 int FUNC8 (scalar_t__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* port ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 char* serverlogfile ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,void**) ; 
 scalar_t__ FUNC18 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int FUNC21 (char*) ; 
 unsigned long FUNC22 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 
 void* use_ipv6 ; 
 void* verbose ; 
 int /*<<< orphan*/  win32_cleanup ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int FUNC25 (char const*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int) ; 

int FUNC27(int argc, char *argv[])
{
  srvr_sockaddr_union_t me;
  curl_socket_t sock = CURL_SOCKET_BAD;
  curl_socket_t msgsock = CURL_SOCKET_BAD;
  int wrotepidfile = 0;
  const char *pidname = ".sockfilt.pid";
  bool juggle_again;
  int rc;
  int error;
  int arg = 1;
  enum sockmode mode = PASSIVE_LISTEN; /* default */
  const char *addr = NULL;

  while(argc>arg) {
    if(!FUNC19("--version", argv[arg])) {
      FUNC11("sockfilt IPv4%s\n",
#ifdef ENABLE_IPV6
             "/IPv6"
#else
             ""
#endif
             );
      return 0;
    }
    else if(!FUNC19("--verbose", argv[arg])) {
      verbose = TRUE;
      arg++;
    }
    else if(!FUNC19("--pidfile", argv[arg])) {
      arg++;
      if(argc>arg)
        pidname = argv[arg++];
    }
    else if(!FUNC19("--logfile", argv[arg])) {
      arg++;
      if(argc>arg)
        serverlogfile = argv[arg++];
    }
    else if(!FUNC19("--ipv6", argv[arg])) {
#ifdef ENABLE_IPV6
      ipv_inuse = "IPv6";
      use_ipv6 = TRUE;
#endif
      arg++;
    }
    else if(!FUNC19("--ipv4", argv[arg])) {
      /* for completeness, we support this option as well */
#ifdef ENABLE_IPV6
      ipv_inuse = "IPv4";
      use_ipv6 = FALSE;
#endif
      arg++;
    }
    else if(!FUNC19("--bindonly", argv[arg])) {
      bind_only = TRUE;
      arg++;
    }
    else if(!FUNC19("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = FUNC22(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + FUNC21(argv[arg])) ||
           ((ulnum != 0UL) && ((ulnum < 1025UL) || (ulnum > 65535UL)))) {
          FUNC5(stderr, "sockfilt: invalid --port argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        port = FUNC3(ulnum);
        arg++;
      }
    }
    else if(!FUNC19("--connect", argv[arg])) {
      /* Asked to actively connect to the specified local port instead of
         doing a passive server-style listening. */
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = FUNC22(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + FUNC21(argv[arg])) ||
           (ulnum < 1025UL) || (ulnum > 65535UL)) {
          FUNC5(stderr, "sockfilt: invalid --connect argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        connectport = FUNC3(ulnum);
        arg++;
      }
    }
    else if(!FUNC19("--addr", argv[arg])) {
      /* Set an IP address to use with --connect; otherwise use localhost */
      arg++;
      if(argc>arg) {
        addr = argv[arg];
        arg++;
      }
    }
    else {
      FUNC12("Usage: sockfilt [option]\n"
           " --version\n"
           " --verbose\n"
           " --logfile [file]\n"
           " --pidfile [file]\n"
           " --ipv4\n"
           " --ipv6\n"
           " --bindonly\n"
           " --port [port]\n"
           " --connect [port]\n"
           " --addr [address]");
      return 0;
    }
  }

#ifdef WIN32
  win32_init();
  atexit(win32_cleanup);

  setmode(fileno(stdin), O_BINARY);
  setmode(fileno(stdout), O_BINARY);
  setmode(fileno(stderr), O_BINARY);
#endif

  FUNC7();

#ifdef ENABLE_IPV6
  if(!use_ipv6)
#endif
    sock = FUNC18(AF_INET, SOCK_STREAM, 0);
#ifdef ENABLE_IPV6
  else
    sock = socket(AF_INET6, SOCK_STREAM, 0);
#endif

  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    FUNC9("Error creating socket: (%d) %s",
           error, FUNC20(error));
    FUNC26("FAIL\n", 5);
    goto sockfilt_cleanup;
  }

  if(connectport) {
    /* Active mode, we should connect to the given port number */
    mode = ACTIVE;
#ifdef ENABLE_IPV6
    if(!use_ipv6) {
#endif
      FUNC10(&me.sa4, 0, sizeof(me.sa4));
      me.sa4.sin_family = AF_INET;
      me.sa4.sin_port = FUNC6(connectport);
      me.sa4.sin_addr.s_addr = INADDR_ANY;
      if(!addr)
        addr = "127.0.0.1";
      FUNC0(AF_INET, addr, &me.sa4.sin_addr);

      rc = FUNC2(sock, &me.sa, sizeof(me.sa4));
#ifdef ENABLE_IPV6
    }
    else {
      memset(&me.sa6, 0, sizeof(me.sa6));
      me.sa6.sin6_family = AF_INET6;
      me.sa6.sin6_port = htons(connectport);
      if(!addr)
        addr = "::1";
      Curl_inet_pton(AF_INET6, addr, &me.sa6.sin6_addr);

      rc = connect(sock, &me.sa, sizeof(me.sa6));
    }
#endif /* ENABLE_IPV6 */
    if(rc) {
      error = SOCKERRNO;
      FUNC9("Error connecting to port %hu: (%d) %s",
             connectport, error, FUNC20(error));
      FUNC26("FAIL\n", 5);
      goto sockfilt_cleanup;
    }
    FUNC9("====> Client connect");
    msgsock = sock; /* use this as stream */
  }
  else {
    /* passive daemon style */
    sock = FUNC17(sock, &port);
    if(CURL_SOCKET_BAD == sock) {
      FUNC26("FAIL\n", 5);
      goto sockfilt_cleanup;
    }
    msgsock = CURL_SOCKET_BAD; /* no stream socket yet */
  }

  FUNC9("Running %s version", ipv_inuse);

  if(connectport)
    FUNC9("Connected to port %hu", connectport);
  else if(bind_only)
    FUNC9("Bound without listening on port %hu", port);
  else
    FUNC9("Listening on port %hu", port);

  wrotepidfile = FUNC25(pidname);
  if(!wrotepidfile) {
    FUNC26("FAIL\n", 5);
    goto sockfilt_cleanup;
  }

  do {
    juggle_again = FUNC8(&msgsock, sock, &mode);
  } while(juggle_again);

sockfilt_cleanup:

  if((msgsock != sock) && (msgsock != CURL_SOCKET_BAD))
    FUNC15(msgsock);

  if(sock != CURL_SOCKET_BAD)
    FUNC15(sock);

  if(wrotepidfile)
    FUNC23(pidname);

  FUNC14();

  if(got_exit_signal) {
    FUNC9("============> sockfilt exits with signal (%d)", exit_signal);
    /*
     * To properly set the return status of the process we
     * must raise the same signal SIGINT or SIGTERM that we
     * caught and let the old handler take care of it.
     */
    FUNC13(exit_signal);
  }

  FUNC9("============> sockfilt quits");
  return 0;
}