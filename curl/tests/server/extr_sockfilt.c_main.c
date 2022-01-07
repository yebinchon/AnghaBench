
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_5__ {TYPE_3__ sin6_addr; void* sin6_port; void* sin6_family; TYPE_3__ sin_addr; void* sin_port; void* sin_family; } ;
struct TYPE_4__ {int sa; TYPE_2__ sa6; TYPE_2__ sa4; } ;
typedef TYPE_1__ srvr_sockaddr_union_t ;
typedef enum sockmode { ____Placeholder_sockmode } sockmode ;
typedef scalar_t__ curl_socket_t ;


 int ACTIVE ;
 void* AF_INET ;
 void* AF_INET6 ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_inet_pton (void*,char const*,TYPE_3__*) ;
 void* FALSE ;
 int INADDR_ANY ;
 int O_BINARY ;
 int PASSIVE_LISTEN ;
 int SOCKERRNO ;
 int SOCK_STREAM ;
 void* TRUE ;
 int atexit (int ) ;
 void* bind_only ;
 int connect (scalar_t__,int *,int) ;
 int connectport ;
 void* curlx_ultous (unsigned long) ;
 int exit_signal ;
 int fileno (int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ got_exit_signal ;
 void* htons (int) ;
 int install_signal_handlers () ;
 char* ipv_inuse ;
 int juggle (scalar_t__*,scalar_t__,int*) ;
 int logmsg (char*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 void* port ;
 int printf (char*,char*) ;
 int puts (char*) ;
 int raise (int ) ;
 int restore_signal_handlers () ;
 int sclose (scalar_t__) ;
 char* serverlogfile ;
 int setmode (int ,int ) ;
 scalar_t__ sockdaemon (scalar_t__,void**) ;
 scalar_t__ socket (void*,int ,int ) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strcmp (char*,char*) ;
 int strerror (int) ;
 int strlen (char*) ;
 unsigned long strtoul (char*,char**,int) ;
 int unlink (char const*) ;
 void* use_ipv6 ;
 void* verbose ;
 int win32_cleanup ;
 int win32_init () ;
 int write_pidfile (char const*) ;
 int write_stdout (char*,int) ;

int main(int argc, char *argv[])
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
  enum sockmode mode = PASSIVE_LISTEN;
  const char *addr = ((void*)0);

  while(argc>arg) {
    if(!strcmp("--version", argv[arg])) {
      printf("sockfilt IPv4%s\n",



             ""

             );
      return 0;
    }
    else if(!strcmp("--verbose", argv[arg])) {
      verbose = TRUE;
      arg++;
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
    else if(!strcmp("--ipv6", argv[arg])) {




      arg++;
    }
    else if(!strcmp("--ipv4", argv[arg])) {





      arg++;
    }
    else if(!strcmp("--bindonly", argv[arg])) {
      bind_only = TRUE;
      arg++;
    }
    else if(!strcmp("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = strtoul(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + strlen(argv[arg])) ||
           ((ulnum != 0UL) && ((ulnum < 1025UL) || (ulnum > 65535UL)))) {
          fprintf(stderr, "sockfilt: invalid --port argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        port = curlx_ultous(ulnum);
        arg++;
      }
    }
    else if(!strcmp("--connect", argv[arg])) {


      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = strtoul(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + strlen(argv[arg])) ||
           (ulnum < 1025UL) || (ulnum > 65535UL)) {
          fprintf(stderr, "sockfilt: invalid --connect argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        connectport = curlx_ultous(ulnum);
        arg++;
      }
    }
    else if(!strcmp("--addr", argv[arg])) {

      arg++;
      if(argc>arg) {
        addr = argv[arg];
        arg++;
      }
    }
    else {
      puts("Usage: sockfilt [option]\n"
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
  install_signal_handlers();




    sock = socket(AF_INET, SOCK_STREAM, 0);





  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    logmsg("Error creating socket: (%d) %s",
           error, strerror(error));
    write_stdout("FAIL\n", 5);
    goto sockfilt_cleanup;
  }

  if(connectport) {

    mode = ACTIVE;



      memset(&me.sa4, 0, sizeof(me.sa4));
      me.sa4.sin_family = AF_INET;
      me.sa4.sin_port = htons(connectport);
      me.sa4.sin_addr.s_addr = INADDR_ANY;
      if(!addr)
        addr = "127.0.0.1";
      Curl_inet_pton(AF_INET, addr, &me.sa4.sin_addr);

      rc = connect(sock, &me.sa, sizeof(me.sa4));
    if(rc) {
      error = SOCKERRNO;
      logmsg("Error connecting to port %hu: (%d) %s",
             connectport, error, strerror(error));
      write_stdout("FAIL\n", 5);
      goto sockfilt_cleanup;
    }
    logmsg("====> Client connect");
    msgsock = sock;
  }
  else {

    sock = sockdaemon(sock, &port);
    if(CURL_SOCKET_BAD == sock) {
      write_stdout("FAIL\n", 5);
      goto sockfilt_cleanup;
    }
    msgsock = CURL_SOCKET_BAD;
  }

  logmsg("Running %s version", ipv_inuse);

  if(connectport)
    logmsg("Connected to port %hu", connectport);
  else if(bind_only)
    logmsg("Bound without listening on port %hu", port);
  else
    logmsg("Listening on port %hu", port);

  wrotepidfile = write_pidfile(pidname);
  if(!wrotepidfile) {
    write_stdout("FAIL\n", 5);
    goto sockfilt_cleanup;
  }

  do {
    juggle_again = juggle(&msgsock, sock, &mode);
  } while(juggle_again);

sockfilt_cleanup:

  if((msgsock != sock) && (msgsock != CURL_SOCKET_BAD))
    sclose(msgsock);

  if(sock != CURL_SOCKET_BAD)
    sclose(sock);

  if(wrotepidfile)
    unlink(pidname);

  restore_signal_handlers();

  if(got_exit_signal) {
    logmsg("============> sockfilt exits with signal (%d)", exit_signal);





    raise(exit_signal);
  }

  logmsg("============> sockfilt quits");
  return 0;
}
