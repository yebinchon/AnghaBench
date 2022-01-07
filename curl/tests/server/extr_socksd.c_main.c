
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ curl_socket_t ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ CURL_SOCKET_BAD ;
 int FALSE ;
 int O_BINARY ;
 int SOCKERRNO ;
 int SOCK_STREAM ;
 int TRUE ;
 int atexit (int ) ;
 scalar_t__ atoi (char*) ;
 char* backendaddr ;
 unsigned short backendport ;
 char* configfile ;
 int curlx_ultous (unsigned long) ;
 int exit_signal ;
 int fileno (int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ got_exit_signal ;
 int incoming (scalar_t__) ;
 int install_signal_handlers () ;
 char* ipv_inuse ;
 int logmsg (char*,...) ;
 int port ;
 int printf (char*,char*) ;
 int puts (char*) ;
 int raise (int ) ;
 int restore_signal_handlers () ;
 int sclose (scalar_t__) ;
 char* serverlogfile ;
 int setmode (int ,int ) ;
 scalar_t__ sockdaemon (scalar_t__,int *) ;
 scalar_t__ socket (int ,int ,int ) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strcmp (char*,char*) ;
 int strerror (int) ;
 int strlen (char*) ;
 unsigned long strtoul (char*,char**,int) ;
 int unlink (char const*) ;
 int use_ipv6 ;
 int win32_cleanup ;
 int win32_init () ;
 int write_pidfile (char const*) ;

int main(int argc, char *argv[])
{
  curl_socket_t sock = CURL_SOCKET_BAD;
  curl_socket_t msgsock = CURL_SOCKET_BAD;
  int wrotepidfile = 0;
  const char *pidname = ".socksd.pid";
  bool juggle_again;
  int error;
  int arg = 1;

  while(argc>arg) {
    if(!strcmp("--version", argv[arg])) {
      printf("socksd IPv4%s\n",



             ""

             );
      return 0;
    }
    else if(!strcmp("--pidfile", argv[arg])) {
      arg++;
      if(argc>arg)
        pidname = argv[arg++];
    }
    else if(!strcmp("--config", argv[arg])) {
      arg++;
      if(argc>arg)
        configfile = argv[arg++];
    }
    else if(!strcmp("--backend", argv[arg])) {
      arg++;
      if(argc>arg)
        backendaddr = argv[arg++];
    }
    else if(!strcmp("--backendport", argv[arg])) {
      arg++;
      if(argc>arg)
        backendport = (unsigned short)atoi(argv[arg++]);
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
    else if(!strcmp("--port", argv[arg])) {
      arg++;
      if(argc>arg) {
        char *endptr;
        unsigned long ulnum = strtoul(argv[arg], &endptr, 10);
        if((endptr != argv[arg] + strlen(argv[arg])) ||
           ((ulnum != 0UL) && ((ulnum < 1025UL) || (ulnum > 65535UL)))) {
          fprintf(stderr, "socksd: invalid --port argument (%s)\n",
                  argv[arg]);
          return 0;
        }
        port = curlx_ultous(ulnum);
        arg++;
      }
    }
    else {
      puts("Usage: socksd [option]\n"
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
  install_signal_handlers();




    sock = socket(AF_INET, SOCK_STREAM, 0);





  if(CURL_SOCKET_BAD == sock) {
    error = SOCKERRNO;
    logmsg("Error creating socket: (%d) %s",
           error, strerror(error));
    goto socks5_cleanup;
  }

  {

    sock = sockdaemon(sock, &port);
    if(CURL_SOCKET_BAD == sock) {
      goto socks5_cleanup;
    }
    msgsock = CURL_SOCKET_BAD;
  }

  logmsg("Running %s version", ipv_inuse);
  logmsg("Listening on port %hu", port);

  wrotepidfile = write_pidfile(pidname);
  if(!wrotepidfile) {
    goto socks5_cleanup;
  }

  do {
    juggle_again = incoming(sock);
  } while(juggle_again);

socks5_cleanup:

  if((msgsock != sock) && (msgsock != CURL_SOCKET_BAD))
    sclose(msgsock);

  if(sock != CURL_SOCKET_BAD)
    sclose(sock);

  if(wrotepidfile)
    unlink(pidname);

  restore_signal_handlers();

  if(got_exit_signal) {
    logmsg("============> socksd exits with signal (%d)", exit_signal);





    raise(exit_signal);
  }

  logmsg("============> socksd quits");
  return 0;
}
