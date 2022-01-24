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
struct timeval {long member_1; int /*<<< orphan*/  member_0; } ;
struct stat {int st_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct httprequest {int sin_family; int sin6_family; int sun_family; scalar_t__ testno; int /*<<< orphan*/  open; int /*<<< orphan*/  connmon; int /*<<< orphan*/  sun_path; void* sin6_port; int /*<<< orphan*/  sin6_addr; void* sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa; struct httprequest sau; struct httprequest sa6; struct httprequest sa4; } ;
typedef  TYPE_2__ srvr_sockaddr_union_t ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  port_str ;
typedef  int /*<<< orphan*/  flag ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int curl_socket_t ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int CURL_SOCKET_BAD ; 
 unsigned short DEFAULT_PORT ; 
 scalar_t__ DOCNUMBER_QUIT ; 
 scalar_t__ EADDRINUSE ; 
 int ECONNREFUSED ; 
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  SERVERLOGS_LOCK ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int S_IFSOCK ; 
 void* TRUE ; 
 int FUNC3 (int) ; 
 int* all_sockets ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int,void*) ; 
 unsigned short FUNC10 (unsigned long) ; 
 char* end_of_headers ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  exit_signal ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ got_exit_signal ; 
 void* FUNC13 (unsigned short) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC14 (struct httprequest*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* is_proxy ; 
 int FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int FUNC18 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct httprequest*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,unsigned short) ; 
 int num_sockets ; 
 char* path ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int FUNC26 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 char* serverlogfile ; 
 scalar_t__ serverlogslocked ; 
 int FUNC27 (int,struct httprequest*,int,char const*) ; 
 scalar_t__ FUNC28 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC29 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int socket_domain ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC30 (char const*,int) ; 
 int /*<<< orphan*/  FUNC31 (char*,char*) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int FUNC33 (char const*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char const*,int) ; 
 unsigned long FUNC35 (char*,char**,int) ; 
 int FUNC36 (char const*) ; 
 void* use_gopher ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  win32_cleanup ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int FUNC39 (char const*) ; 

int FUNC40(int argc, char *argv[])
{
  srvr_sockaddr_union_t me;
  curl_socket_t sock = CURL_SOCKET_BAD;
  int wrotepidfile = 0;
  int flag;
  unsigned short port = DEFAULT_PORT;
#ifdef USE_UNIX_SOCKETS
  const char *unix_socket = NULL;
  bool unlink_socket = false;
#endif
  const char *pidname = ".http.pid";
  struct httprequest req;
  int rc = 0;
  int error;
  int arg = 1;
  long pid;
  const char *connecthost = "127.0.0.1";
  const char *socket_type = "IPv4";
  char port_str[11];
  const char *location_str = port_str;

  /* a default CONNECT port is basically pointless but still ... */
  size_t socket_idx;

  FUNC20(&req, 0, sizeof(req));

  while(argc>arg) {
    if(!FUNC31("--version", argv[arg])) {
      FUNC22("sws IPv4"
#ifdef ENABLE_IPV6
             "/IPv6"
#endif
#ifdef USE_UNIX_SOCKETS
             "/unix"
#endif
          );
      return 0;
    }
    else if(!FUNC31("--pidfile", argv[arg])) {
      arg++;
      if(argc>arg)
        pidname = argv[arg++];
    }
    else if(!FUNC31("--logfile", argv[arg])) {
      arg++;
      if(argc>arg)
        serverlogfile = argv[arg++];
    }
    else if(!FUNC31("--gopher", argv[arg])) {
      arg++;
      use_gopher = TRUE;
      end_of_headers = "\r\n"; /* gopher style is much simpler */
    }
    else if(!FUNC31("--ipv4", argv[arg])) {
      socket_type = "IPv4";
      socket_domain = AF_INET;
      location_str = port_str;
      arg++;
    }
    else if(!FUNC31("--ipv6", argv[arg])) {
#ifdef ENABLE_IPV6
      socket_type = "IPv6";
      socket_domain = AF_INET6;
      location_str = port_str;
#endif
      arg++;
    }
    else if(!FUNC31("--unix-socket", argv[arg])) {
      arg++;
      if(argc>arg) {
#ifdef USE_UNIX_SOCKETS
        unix_socket = argv[arg];
        if(strlen(unix_socket) >= sizeof(me.sau.sun_path)) {
          fprintf(stderr, "sws: socket path must be shorter than %zu chars\n",
                  sizeof(me.sau.sun_path));
          return 0;
        }
        socket_type = "unix";
        socket_domain = AF_UNIX;
        location_str = unix_socket;
#endif
        arg++;
      }
    }
    else if(!FUNC31("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = FUNC35(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + FUNC33(argv[arg])) ||
           (ulnum < 1025UL) || (ulnum > 65535UL)) {
          FUNC11(stderr, "sws: invalid --port argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        port = FUNC10(ulnum);
        arg++;
      }
    }
    else if(!FUNC31("--srcdir", argv[arg])) {
      arg++;
      if(argc>arg) {
        path = argv[arg];
        arg++;
      }
    }
    else if(!FUNC31("--connect", argv[arg])) {
      /* The connect host IP number that the proxy will connect to no matter
         what the client asks for, but also use this as a hint that we run as
         a proxy and do a few different internal choices */
      arg++;
      if(argc>arg) {
        connecthost = argv[arg];
        arg++;
        is_proxy = TRUE;
        FUNC17("Run as proxy, CONNECT to host %s", connecthost);
      }
    }
    else {
      FUNC22("Usage: sws [option]\n"
           " --version\n"
           " --logfile [file]\n"
           " --pidfile [file]\n"
           " --ipv4\n"
           " --ipv6\n"
           " --unix-socket [file]\n"
           " --port [port]\n"
           " --srcdir [path]\n"
           " --connect [ip4-addr]\n"
           " --gopher");
      return 0;
    }
  }

  FUNC21(port_str, sizeof(port_str), "port %hu", port);

#ifdef WIN32
  win32_init();
  atexit(win32_cleanup);
#endif

  FUNC15();

  pid = (long)FUNC12();

  sock = FUNC29(socket_domain, SOCK_STREAM, 0);

  all_sockets[0] = sock;
  num_sockets = 1;

  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    FUNC17("Error creating socket: (%d) %s",
           error, FUNC32(error));
    goto sws_cleanup;
  }

  flag = 1;
  if(0 != FUNC28(sock, SOL_SOCKET, SO_REUSEADDR,
                     (void *)&flag, sizeof(flag))) {
    error = SOCKERRNO;
    FUNC17("setsockopt(SO_REUSEADDR) failed with error: (%d) %s",
           error, FUNC32(error));
    goto sws_cleanup;
  }
  if(0 != FUNC9(sock, TRUE)) {
    error = SOCKERRNO;
    FUNC17("curlx_nonblock failed with error: (%d) %s",
           error, FUNC32(error));
    goto sws_cleanup;
  }

  switch(socket_domain) {
  case AF_INET:
    FUNC20(&me.sa4, 0, sizeof(me.sa4));
    me.sa4.sin_family = AF_INET;
    me.sa4.sin_addr.s_addr = INADDR_ANY;
    me.sa4.sin_port = FUNC13(port);
    rc = FUNC5(sock, &me.sa, sizeof(me.sa4));
    break;
#ifdef ENABLE_IPV6
  case AF_INET6:
    memset(&me.sa6, 0, sizeof(me.sa6));
    me.sa6.sin6_family = AF_INET6;
    me.sa6.sin6_addr = in6addr_any;
    me.sa6.sin6_port = htons(port);
    rc = bind(sock, &me.sa, sizeof(me.sa6));
    break;
#endif /* ENABLE_IPV6 */
#ifdef USE_UNIX_SOCKETS
  case AF_UNIX:
    memset(&me.sau, 0, sizeof(me.sau));
    me.sau.sun_family = AF_UNIX;
    strncpy(me.sau.sun_path, unix_socket, sizeof(me.sau.sun_path));
    rc = bind(sock, &me.sa, sizeof(me.sau));
    if(0 != rc && errno == EADDRINUSE) {
      struct stat statbuf;
      /* socket already exists. Perhaps it is stale? */
      int unixfd = socket(AF_UNIX, SOCK_STREAM, 0);
      if(CURL_SOCKET_BAD == unixfd) {
        error = SOCKERRNO;
        logmsg("Error binding socket, failed to create socket at %s: (%d) %s",
               unix_socket, error, strerror(error));
        goto sws_cleanup;
      }
      /* check whether the server is alive */
      rc = connect(unixfd, &me.sa, sizeof(me.sau));
      error = errno;
      close(unixfd);
      if(ECONNREFUSED != error) {
        logmsg("Error binding socket, failed to connect to %s: (%d) %s",
               unix_socket, error, strerror(error));
        goto sws_cleanup;
      }
      /* socket server is not alive, now check if it was actually a socket.
       * Systems which have Unix sockets will also have lstat */
      rc = lstat(unix_socket, &statbuf);
      if(0 != rc) {
        logmsg("Error binding socket, failed to stat %s: (%d) %s",
               unix_socket, errno, strerror(errno));
        goto sws_cleanup;
      }
      if((statbuf.st_mode & S_IFSOCK) != S_IFSOCK) {
        logmsg("Error binding socket, failed to stat %s: (%d) %s",
               unix_socket, error, strerror(error));
        goto sws_cleanup;
      }
      /* dead socket, cleanup and retry bind */
      rc = unlink(unix_socket);
      if(0 != rc) {
        logmsg("Error binding socket, failed to unlink %s: (%d) %s",
               unix_socket, errno, strerror(errno));
        goto sws_cleanup;
      }
      /* stale socket is gone, retry bind */
      rc = bind(sock, &me.sa, sizeof(me.sau));
    }
    break;
#endif /* USE_UNIX_SOCKETS */
  }
  if(0 != rc) {
    error = SOCKERRNO;
    FUNC17("Error binding socket on %s: (%d) %s",
           location_str, error, FUNC32(error));
    goto sws_cleanup;
  }

  FUNC17("Running %s %s version on %s",
         use_gopher?"GOPHER":"HTTP", socket_type, location_str);

  /* start accepting connections */
  rc = FUNC16(sock, 5);
  if(0 != rc) {
    error = SOCKERRNO;
    FUNC17("listen() failed with error: (%d) %s",
           error, FUNC32(error));
    goto sws_cleanup;
  }

#ifdef USE_UNIX_SOCKETS
  /* listen succeeds, so let's assume a valid listening Unix socket */
  unlink_socket = true;
#endif

  /*
  ** As soon as this server writes its pid file the test harness will
  ** attempt to connect to this server and initiate its verification.
  */

  wrotepidfile = FUNC39(pidname);
  if(!wrotepidfile)
    goto sws_cleanup;

  /* initialization of httprequest struct is done before get_request(), but
     the pipelining struct field must be initialized previously to FALSE
     every time a new connection arrives. */

  FUNC14(&req);

  for(;;) {
    fd_set input;
    fd_set output;
    struct timeval timeout = {0, 250000L}; /* 250 ms */
    curl_socket_t maxfd = (curl_socket_t)-1;

    /* Clear out closed sockets */
    for(socket_idx = num_sockets - 1; socket_idx >= 1; --socket_idx) {
      if(CURL_SOCKET_BAD == all_sockets[socket_idx]) {
        char *dst = (char *) (all_sockets + socket_idx);
        char *src = (char *) (all_sockets + socket_idx + 1);
        char *end = (char *) (all_sockets + num_sockets);
        FUNC19(dst, src, end - src);
        num_sockets -= 1;
      }
    }

    if(got_exit_signal)
      goto sws_cleanup;

    /* Set up for select */
    FUNC2(&input);
    FUNC2(&output);

    for(socket_idx = 0; socket_idx < num_sockets; ++socket_idx) {
      /* Listen on all sockets */
      FUNC1(all_sockets[socket_idx], &input);
      if(all_sockets[socket_idx] > maxfd)
        maxfd = all_sockets[socket_idx];
    }

    if(got_exit_signal)
      goto sws_cleanup;

    do {
      rc = FUNC26((int)maxfd + 1, &input, &output, NULL, &timeout);
    } while(rc < 0 && errno == EINTR && !got_exit_signal);

    if(got_exit_signal)
      goto sws_cleanup;

    if(rc < 0) {
      error = SOCKERRNO;
      FUNC17("select() failed with error: (%d) %s",
             error, FUNC32(error));
      goto sws_cleanup;
    }

    if(rc == 0) {
      /* Timed out - try again */
      continue;
    }

    /* Check if the listening socket is ready to accept */
    if(FUNC0(all_sockets[0], &input)) {
      /* Service all queued connections */
      curl_socket_t msgsock;
      do {
        msgsock = FUNC3(sock);
        FUNC17("accept_connection %d returned %d", sock, msgsock);
        if(CURL_SOCKET_BAD == msgsock)
          goto sws_cleanup;
      } while(msgsock > 0);
    }

    /* Service all connections that are ready */
    for(socket_idx = 1; socket_idx < num_sockets; ++socket_idx) {
      if(FUNC0(all_sockets[socket_idx], &input)) {
        if(got_exit_signal)
          goto sws_cleanup;

        /* Service this connection until it has nothing available */
        do {
          rc = FUNC27(all_sockets[socket_idx], &req, sock,
                                  connecthost);
          if(got_exit_signal)
            goto sws_cleanup;

          if(rc < 0) {
            FUNC17("====> Client disconnect %d", req.connmon);

            if(req.connmon) {
              const char *keepopen = "[DISCONNECT]\n";
              FUNC30(keepopen, FUNC33(keepopen));
            }

            if(!req.open)
              /* When instructed to close connection after server-reply we
                 wait a very small amount of time before doing so. If this
                 is not done client might get an ECONNRESET before reading
                 a single byte of server-reply. */
              FUNC37(50);

            if(all_sockets[socket_idx] != CURL_SOCKET_BAD) {
              FUNC25(all_sockets[socket_idx]);
              all_sockets[socket_idx] = CURL_SOCKET_BAD;
            }

            serverlogslocked -= 1;
            if(!serverlogslocked)
              FUNC6(SERVERLOGS_LOCK);

            if(req.testno == DOCNUMBER_QUIT)
              goto sws_cleanup;
          }

          /* Reset the request, unless we're still in the middle of reading */
          if(rc != 0)
            FUNC14(&req);
        } while(rc > 0);
      }
    }

    if(got_exit_signal)
      goto sws_cleanup;
  }

sws_cleanup:

  for(socket_idx = 1; socket_idx < num_sockets; ++socket_idx)
    if((all_sockets[socket_idx] != sock) &&
     (all_sockets[socket_idx] != CURL_SOCKET_BAD))
      FUNC25(all_sockets[socket_idx]);

  if(sock != CURL_SOCKET_BAD)
    FUNC25(sock);

#ifdef USE_UNIX_SOCKETS
  if(unlink_socket && socket_domain == AF_UNIX) {
    rc = unlink(unix_socket);
    logmsg("unlink(%s) = %d (%s)", unix_socket, rc, strerror(rc));
  }
#endif

  if(got_exit_signal)
    FUNC17("signalled to die");

  if(wrotepidfile)
    FUNC36(pidname);

  if(serverlogslocked) {
    serverlogslocked = 0;
    FUNC6(SERVERLOGS_LOCK);
  }

  FUNC24();

  if(got_exit_signal) {
    FUNC17("========> %s sws (%s pid: %ld) exits with signal (%d)",
           socket_type, location_str, pid, exit_signal);
    /*
     * To properly set the return status of the process we
     * must raise the same signal SIGINT or SIGTERM that we
     * caught and let the old handler take care of it.
     */
    FUNC23(exit_signal);
  }

  FUNC17("========> sws quits");
  return 0;
}