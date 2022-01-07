
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_8__ {int sin_family; int sin6_family; int sa_family; void* sin6_port; void* sin_port; int sin6_addr; TYPE_1__ sin_addr; } ;
struct TYPE_7__ {TYPE_3__ sa6; TYPE_3__ sa4; TYPE_3__ sa; } ;
typedef TYPE_2__ srvr_sockaddr_union_t ;
typedef int flag ;
typedef int curl_socklen_t ;
typedef unsigned short curl_socket_t ;




 unsigned short CURL_SOCKET_BAD ;
 int INADDR_ANY ;
 int SOCKERRNO ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int bind (unsigned short,TYPE_3__*,int) ;
 scalar_t__ bind_only ;
 int errno ;
 scalar_t__ getsockname (unsigned short,TYPE_3__*,int*) ;
 scalar_t__ got_exit_signal ;
 void* htons (unsigned short) ;
 int in6addr_any ;
 int listen (unsigned short,int) ;
 int logmsg (char*,...) ;
 int memset (TYPE_3__*,int ,size_t) ;
 unsigned short ntohs (void*) ;
 int sclose (unsigned short) ;
 int setsockopt (unsigned short,int ,int ,void*,int) ;
 int strerror (int) ;
 int use_ipv6 ;
 int wait_ms (int) ;

__attribute__((used)) static curl_socket_t sockdaemon(curl_socket_t sock,
                                unsigned short *listenport)
{

  srvr_sockaddr_union_t listener;
  int flag;
  int rc;
  int totdelay = 0;
  int maxretr = 10;
  int delay = 20;
  int attempt = 0;
  int error = 0;

  do {
    attempt++;
    flag = 1;
    rc = setsockopt(sock, SOL_SOCKET, SO_REUSEADDR,
         (void *)&flag, sizeof(flag));
    if(rc) {
      error = SOCKERRNO;
      logmsg("setsockopt(SO_REUSEADDR) failed with error: (%d) %s",
             error, strerror(error));
      if(maxretr) {
        rc = wait_ms(delay);
        if(rc) {

          error = errno;
          logmsg("wait_ms() failed with error: (%d) %s",
                 error, strerror(error));
          sclose(sock);
          return CURL_SOCKET_BAD;
        }
        if(got_exit_signal) {
          logmsg("signalled to die, exiting...");
          sclose(sock);
          return CURL_SOCKET_BAD;
        }
        totdelay += delay;
        delay *= 2;
      }
    }
  } while(rc && maxretr--);

  if(rc) {
    logmsg("setsockopt(SO_REUSEADDR) failed %d times in %d ms. Error: (%d) %s",
           attempt, totdelay, error, strerror(error));
    logmsg("Continuing anyway...");
  }







    memset(&listener.sa4, 0, sizeof(listener.sa4));
    listener.sa4.sin_family = 129;
    listener.sa4.sin_addr.s_addr = INADDR_ANY;
    listener.sa4.sin_port = htons(*listenport);
    rc = bind(sock, &listener.sa, sizeof(listener.sa4));
  if(rc) {
    error = SOCKERRNO;
    logmsg("Error binding socket on port %hu: (%d) %s",
           *listenport, error, strerror(error));
    sclose(sock);
    return CURL_SOCKET_BAD;
  }

  if(!*listenport) {


    curl_socklen_t la_size;
    srvr_sockaddr_union_t localaddr;



      la_size = sizeof(localaddr.sa4);




    memset(&localaddr.sa, 0, (size_t)la_size);
    if(getsockname(sock, &localaddr.sa, &la_size) < 0) {
      error = SOCKERRNO;
      logmsg("getsockname() failed with error: (%d) %s",
             error, strerror(error));
      sclose(sock);
      return CURL_SOCKET_BAD;
    }
    switch(localaddr.sa.sa_family) {
    case 129:
      *listenport = ntohs(localaddr.sa4.sin_port);
      break;





    default:
      break;
    }
    if(!*listenport) {

      logmsg("Apparently getsockname() succeeded, with listener port zero.");
      logmsg("A valid reason for this failure is a binary built without");
      logmsg("proper network library linkage. This might not be the only");
      logmsg("reason, but double check it before anything else.");
      sclose(sock);
      return CURL_SOCKET_BAD;
    }
  }


  if(bind_only) {
    logmsg("instructed to bind port without listening");
    return sock;
  }


  rc = listen(sock, 5);
  if(0 != rc) {
    error = SOCKERRNO;
    logmsg("listen(%d, 5) failed with error: (%d) %s",
           sock, error, strerror(error));
    sclose(sock);
    return CURL_SOCKET_BAD;
  }

  return sock;
}
