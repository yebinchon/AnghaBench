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
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  O_BINARY ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* backendaddr ; 
 unsigned short backendport ; 
 char* configfile ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  exit_signal ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ got_exit_signal ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* ipv_inuse ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 char* serverlogfile ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (char*) ; 
 unsigned long FUNC19 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 int /*<<< orphan*/  use_ipv6 ; 
 int /*<<< orphan*/  win32_cleanup ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 (char const*) ; 

int FUNC23(int argc, char *argv[])
{
  curl_socket_t sock = CURL_SOCKET_BAD;
  curl_socket_t msgsock = CURL_SOCKET_BAD;
  int wrotepidfile = 0;
  const char *pidname = ".socksd.pid";
  bool juggle_again;
  int error;
  int arg = 1;

  while(argc>arg) {
    if(!FUNC16("--version", argv[arg])) {
      FUNC8("socksd IPv4%s\n",
#ifdef ENABLE_IPV6
             "/IPv6"
#else
             ""
#endif
             );
      return 0;
    }
    else if(!FUNC16("--pidfile", argv[arg])) {
      arg++;
      if(argc>arg)
        pidname = argv[arg++];
    }
    else if(!FUNC16("--config", argv[arg])) {
      arg++;
      if(argc>arg)
        configfile = argv[arg++];
    }
    else if(!FUNC16("--backend", argv[arg])) {
      arg++;
      if(argc>arg)
        backendaddr = argv[arg++];
    }
    else if(!FUNC16("--backendport", argv[arg])) {
      arg++;
      if(argc>arg)
        backendport = (unsigned short)FUNC1(argv[arg++]);
    }
    else if(!FUNC16("--logfile", argv[arg])) {
      arg++;
      if(argc>arg)
        serverlogfile = argv[arg++];
    }
    else if(!FUNC16("--ipv6", argv[arg])) {
#ifdef ENABLE_IPV6
      ipv_inuse = "IPv6";
      use_ipv6 = TRUE;
#endif
      arg++;
    }
    else if(!FUNC16("--ipv4", argv[arg])) {
      /* for completeness, we support this option as well */
#ifdef ENABLE_IPV6
      ipv_inuse = "IPv4";
      use_ipv6 = FALSE;
#endif
      arg++;
    }
    else if(!FUNC16("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = FUNC19(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + FUNC18(argv[arg])) ||
           ((ulnum != 0UL) && ((ulnum < 1025UL) || (ulnum > 65535UL)))) {
          FUNC4(stderr, "socksd: invalid --port argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        port = FUNC2(ulnum);
        arg++;
      }
    }
    else {
      FUNC9("Usage: socksd [option]\n"
           " --backend [ipv4 addr]\n"
           " --backendport [TCP port]\n"
           " --config [file]\n"
           " --version\n"
           " --logfile [file]\n"
           " --pidfile [file]\n"
           " --ipv4\n"
           " --ipv6\n"
           " --bindonly\n"
           " --port [port]\n");
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

  FUNC6();

#ifdef ENABLE_IPV6
  if(!use_ipv6)
#endif
    sock = FUNC15(AF_INET, SOCK_STREAM, 0);
#ifdef ENABLE_IPV6
  else
    sock = socket(AF_INET6, SOCK_STREAM, 0);
#endif

  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    FUNC7("Error creating socket: (%d) %s",
           error, FUNC17(error));
    goto socks5_cleanup;
  }

  {
    /* passive daemon style */
    sock = FUNC14(sock, &port);
    if(CURL_SOCKET_BAD == sock) {
      goto socks5_cleanup;
    }
    msgsock = CURL_SOCKET_BAD; /* no stream socket yet */
  }

  FUNC7("Running %s version", ipv_inuse);
  FUNC7("Listening on port %hu", port);

  wrotepidfile = FUNC22(pidname);
  if(!wrotepidfile) {
    goto socks5_cleanup;
  }

  do {
    juggle_again = FUNC5(sock);
  } while(juggle_again);

socks5_cleanup:

  if((msgsock != sock) && (msgsock != CURL_SOCKET_BAD))
    FUNC12(msgsock);

  if(sock != CURL_SOCKET_BAD)
    FUNC12(sock);

  if(wrotepidfile)
    FUNC20(pidname);

  FUNC11();

  if(got_exit_signal) {
    FUNC7("============> socksd exits with signal (%d)", exit_signal);
    /*
     * To properly set the return status of the process we
     * must raise the same signal SIGINT or SIGTERM that we
     * caught and let the old handler take care of it.
     */
    FUNC10(exit_signal);
  }

  FUNC7("============> socksd quits");
  return 0;
}