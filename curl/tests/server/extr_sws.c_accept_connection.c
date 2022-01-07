
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flag ;
typedef scalar_t__ curl_socket_t ;


 scalar_t__ CURL_SOCKET_BAD ;
 int EAGAIN ;
 int EWOULDBLOCK ;
 int IPPROTO_TCP ;
 size_t MAX_SOCKETS ;
 int SERVERLOGS_LOCK ;
 int SOCKERRNO ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_NODELAY ;
 int TRUE ;
 scalar_t__ accept (scalar_t__,int *,int *) ;
 scalar_t__* all_sockets ;
 scalar_t__ curlx_nonblock (scalar_t__,int ) ;
 scalar_t__ got_exit_signal ;
 int logmsg (char*,...) ;
 size_t num_sockets ;
 int sclose (scalar_t__) ;
 scalar_t__ serverlogslocked ;
 int set_advisor_read_lock (int ) ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,void*,int) ;
 scalar_t__ socket_domain_is_ip () ;
 int strerror (int) ;

__attribute__((used)) static curl_socket_t accept_connection(curl_socket_t sock)
{
  curl_socket_t msgsock = CURL_SOCKET_BAD;
  int error;
  int flag = 1;

  if(MAX_SOCKETS == num_sockets) {
    logmsg("Too many open sockets!");
    return CURL_SOCKET_BAD;
  }

  msgsock = accept(sock, ((void*)0), ((void*)0));

  if(got_exit_signal) {
    if(CURL_SOCKET_BAD != msgsock)
      sclose(msgsock);
    return CURL_SOCKET_BAD;
  }

  if(CURL_SOCKET_BAD == msgsock) {
    error = SOCKERRNO;
    if(EAGAIN == error || EWOULDBLOCK == error) {

      return 0;
    }
    logmsg("MAJOR ERROR: accept() failed with error: (%d) %s",
           error, strerror(error));
    return CURL_SOCKET_BAD;
  }

  if(0 != curlx_nonblock(msgsock, TRUE)) {
    error = SOCKERRNO;
    logmsg("curlx_nonblock failed with error: (%d) %s",
           error, strerror(error));
    sclose(msgsock);
    return CURL_SOCKET_BAD;
  }

  if(0 != setsockopt(msgsock, SOL_SOCKET, SO_KEEPALIVE,
                     (void *)&flag, sizeof(flag))) {
    error = SOCKERRNO;
    logmsg("setsockopt(SO_KEEPALIVE) failed with error: (%d) %s",
           error, strerror(error));
    sclose(msgsock);
    return CURL_SOCKET_BAD;
  }







  if(!serverlogslocked)
    set_advisor_read_lock(SERVERLOGS_LOCK);
  serverlogslocked += 1;

  logmsg("====> Client connect");

  all_sockets[num_sockets] = msgsock;
  num_sockets += 1;
  return msgsock;
}
