
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int sa_len; } ;
typedef TYPE_1__* socket_t ;
typedef int errno_t ;
struct TYPE_6__ {int so_state; } ;


 int EINVAL ;
 int ENOTCONN ;
 int FREE (struct sockaddr*,int ) ;
 int M_SONAME ;
 int SS_ISCONFIRMING ;
 int SS_ISCONNECTED ;
 int memcpy (struct sockaddr*,struct sockaddr*,int) ;
 int socket_lock (TYPE_1__*,int) ;
 int socket_unlock (TYPE_1__*,int) ;
 int sogetaddr_locked (TYPE_1__*,struct sockaddr**,int) ;

errno_t
sock_getpeername(socket_t sock, struct sockaddr *peername, int peernamelen)
{
 int error;
 struct sockaddr *sa = ((void*)0);

 if (sock == ((void*)0) || peername == ((void*)0) || peernamelen < 0)
  return (EINVAL);

 socket_lock(sock, 1);
 if (!(sock->so_state & (SS_ISCONNECTED|SS_ISCONFIRMING))) {
  socket_unlock(sock, 1);
  return (ENOTCONN);
 }
 error = sogetaddr_locked(sock, &sa, 1);
 socket_unlock(sock, 1);
 if (error == 0) {
  if (peernamelen > sa->sa_len)
   peernamelen = sa->sa_len;
  memcpy(peername, sa, peernamelen);
  FREE(sa, M_SONAME);
 }
 return (error);
}
