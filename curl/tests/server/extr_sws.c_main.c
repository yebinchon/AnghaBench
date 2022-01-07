
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {long member_1; int member_0; } ;
struct stat {int st_mode; } ;
struct TYPE_3__ {int s_addr; } ;
struct httprequest {int sin_family; int sin6_family; int sun_family; scalar_t__ testno; int open; int connmon; int sun_path; void* sin6_port; int sin6_addr; void* sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_4__ {int sa; struct httprequest sau; struct httprequest sa6; struct httprequest sa4; } ;
typedef TYPE_2__ srvr_sockaddr_union_t ;
typedef int req ;
typedef int port_str ;
typedef int flag ;
typedef int fd_set ;
typedef int curl_socket_t ;





 int CURL_SOCKET_BAD ;
 unsigned short DEFAULT_PORT ;
 scalar_t__ DOCNUMBER_QUIT ;
 scalar_t__ EADDRINUSE ;
 int ECONNREFUSED ;
 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int INADDR_ANY ;
 int SERVERLOGS_LOCK ;
 int SOCKERRNO ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int S_IFSOCK ;
 void* TRUE ;
 int accept_connection (int) ;
 int* all_sockets ;
 int atexit (int ) ;
 int bind (int,int *,int) ;
 int clear_advisor_read_lock (int ) ;
 int close (int) ;
 int connect (int,int *,int) ;
 scalar_t__ curlx_nonblock (int,void*) ;
 unsigned short curlx_ultous (unsigned long) ;
 char* end_of_headers ;
 scalar_t__ errno ;
 int exit_signal ;
 int fprintf (int ,char*,...) ;
 scalar_t__ getpid () ;
 scalar_t__ got_exit_signal ;
 void* htons (unsigned short) ;
 int in6addr_any ;
 int init_httprequest (struct httprequest*) ;
 int install_signal_handlers () ;
 void* is_proxy ;
 int listen (int,int) ;
 int logmsg (char*,...) ;
 int lstat (char const*,struct stat*) ;
 int memmove (char*,char*,int) ;
 int memset (struct httprequest*,int ,int) ;
 int msnprintf (char*,int,char*,unsigned short) ;
 int num_sockets ;
 char* path ;
 int puts (char*) ;
 int raise (int ) ;
 int restore_signal_handlers () ;
 int sclose (int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 char* serverlogfile ;
 scalar_t__ serverlogslocked ;
 int service_connection (int,struct httprequest*,int,char const*) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;
 int socket (int const,int ,int ) ;
 int socket_domain ;
 int stderr ;
 int storerequest (char const*,int) ;
 int strcmp (char*,char*) ;
 int strerror (int) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int) ;
 unsigned long strtoul (char*,char**,int) ;
 int unlink (char const*) ;
 void* use_gopher ;
 int wait_ms (int) ;
 int win32_cleanup ;
 int win32_init () ;
 int write_pidfile (char const*) ;

int main(int argc, char *argv[])
{
  srvr_sockaddr_union_t me;
  curl_socket_t sock = CURL_SOCKET_BAD;
  int wrotepidfile = 0;
  int flag;
  unsigned short port = DEFAULT_PORT;




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


  size_t socket_idx;

  memset(&req, 0, sizeof(req));

  while(argc>arg) {
    if(!strcmp("--version", argv[arg])) {
      puts("sws IPv4"






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
    else if(!strcmp("--gopher", argv[arg])) {
      arg++;
      use_gopher = TRUE;
      end_of_headers = "\r\n";
    }
    else if(!strcmp("--ipv4", argv[arg])) {
      socket_type = "IPv4";
      socket_domain = 130;
      location_str = port_str;
      arg++;
    }
    else if(!strcmp("--ipv6", argv[arg])) {





      arg++;
    }
    else if(!strcmp("--unix-socket", argv[arg])) {
      arg++;
      if(argc>arg) {
        arg++;
      }
    }
    else if(!strcmp("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = strtoul(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + strlen(argv[arg])) ||
           (ulnum < 1025UL) || (ulnum > 65535UL)) {
          fprintf(stderr, "sws: invalid --port argument (%s)\n",
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
    else if(!strcmp("--connect", argv[arg])) {



      arg++;
      if(argc>arg) {
        connecthost = argv[arg];
        arg++;
        is_proxy = TRUE;
        logmsg("Run as proxy, CONNECT to host %s", connecthost);
      }
    }
    else {
      puts("Usage: sws [option]\n"
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

  msnprintf(port_str, sizeof(port_str), "port %hu", port);






  install_signal_handlers();

  pid = (long)getpid();

  sock = socket(socket_domain, SOCK_STREAM, 0);

  all_sockets[0] = sock;
  num_sockets = 1;

  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    logmsg("Error creating socket: (%d) %s",
           error, strerror(error));
    goto sws_cleanup;
  }

  flag = 1;
  if(0 != setsockopt(sock, SOL_SOCKET, SO_REUSEADDR,
                     (void *)&flag, sizeof(flag))) {
    error = SOCKERRNO;
    logmsg("setsockopt(SO_REUSEADDR) failed with error: (%d) %s",
           error, strerror(error));
    goto sws_cleanup;
  }
  if(0 != curlx_nonblock(sock, TRUE)) {
    error = SOCKERRNO;
    logmsg("curlx_nonblock failed with error: (%d) %s",
           error, strerror(error));
    goto sws_cleanup;
  }

  switch(socket_domain) {
  case 130:
    memset(&me.sa4, 0, sizeof(me.sa4));
    me.sa4.sin_family = 130;
    me.sa4.sin_addr.s_addr = INADDR_ANY;
    me.sa4.sin_port = htons(port);
    rc = bind(sock, &me.sa, sizeof(me.sa4));
    break;
  }
  if(0 != rc) {
    error = SOCKERRNO;
    logmsg("Error binding socket on %s: (%d) %s",
           location_str, error, strerror(error));
    goto sws_cleanup;
  }

  logmsg("Running %s %s version on %s",
         use_gopher?"GOPHER":"HTTP", socket_type, location_str);


  rc = listen(sock, 5);
  if(0 != rc) {
    error = SOCKERRNO;
    logmsg("listen() failed with error: (%d) %s",
           error, strerror(error));
    goto sws_cleanup;
  }
  wrotepidfile = write_pidfile(pidname);
  if(!wrotepidfile)
    goto sws_cleanup;





  init_httprequest(&req);

  for(;;) {
    fd_set input;
    fd_set output;
    struct timeval timeout = {0, 250000L};
    curl_socket_t maxfd = (curl_socket_t)-1;


    for(socket_idx = num_sockets - 1; socket_idx >= 1; --socket_idx) {
      if(CURL_SOCKET_BAD == all_sockets[socket_idx]) {
        char *dst = (char *) (all_sockets + socket_idx);
        char *src = (char *) (all_sockets + socket_idx + 1);
        char *end = (char *) (all_sockets + num_sockets);
        memmove(dst, src, end - src);
        num_sockets -= 1;
      }
    }

    if(got_exit_signal)
      goto sws_cleanup;


    FD_ZERO(&input);
    FD_ZERO(&output);

    for(socket_idx = 0; socket_idx < num_sockets; ++socket_idx) {

      FD_SET(all_sockets[socket_idx], &input);
      if(all_sockets[socket_idx] > maxfd)
        maxfd = all_sockets[socket_idx];
    }

    if(got_exit_signal)
      goto sws_cleanup;

    do {
      rc = select((int)maxfd + 1, &input, &output, ((void*)0), &timeout);
    } while(rc < 0 && errno == EINTR && !got_exit_signal);

    if(got_exit_signal)
      goto sws_cleanup;

    if(rc < 0) {
      error = SOCKERRNO;
      logmsg("select() failed with error: (%d) %s",
             error, strerror(error));
      goto sws_cleanup;
    }

    if(rc == 0) {

      continue;
    }


    if(FD_ISSET(all_sockets[0], &input)) {

      curl_socket_t msgsock;
      do {
        msgsock = accept_connection(sock);
        logmsg("accept_connection %d returned %d", sock, msgsock);
        if(CURL_SOCKET_BAD == msgsock)
          goto sws_cleanup;
      } while(msgsock > 0);
    }


    for(socket_idx = 1; socket_idx < num_sockets; ++socket_idx) {
      if(FD_ISSET(all_sockets[socket_idx], &input)) {
        if(got_exit_signal)
          goto sws_cleanup;


        do {
          rc = service_connection(all_sockets[socket_idx], &req, sock,
                                  connecthost);
          if(got_exit_signal)
            goto sws_cleanup;

          if(rc < 0) {
            logmsg("====> Client disconnect %d", req.connmon);

            if(req.connmon) {
              const char *keepopen = "[DISCONNECT]\n";
              storerequest(keepopen, strlen(keepopen));
            }

            if(!req.open)




              wait_ms(50);

            if(all_sockets[socket_idx] != CURL_SOCKET_BAD) {
              sclose(all_sockets[socket_idx]);
              all_sockets[socket_idx] = CURL_SOCKET_BAD;
            }

            serverlogslocked -= 1;
            if(!serverlogslocked)
              clear_advisor_read_lock(SERVERLOGS_LOCK);

            if(req.testno == DOCNUMBER_QUIT)
              goto sws_cleanup;
          }


          if(rc != 0)
            init_httprequest(&req);
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
      sclose(all_sockets[socket_idx]);

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
    logmsg("========> %s sws (%s pid: %ld) exits with signal (%d)",
           socket_type, location_str, pid, exit_signal);





    raise(exit_signal);
  }

  logmsg("========> sws quits");
  return 0;
}
