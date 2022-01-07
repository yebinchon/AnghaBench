
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
typedef int * socket_t ;
typedef int errno_t ;


 int EINVAL ;
 int FREE (struct sockaddr*,int ) ;
 int M_SONAME ;
 int memcpy (struct sockaddr*,struct sockaddr*,int) ;
 int socket_lock (int *,int) ;
 int socket_unlock (int *,int) ;
 int sogetaddr_locked (int *,struct sockaddr**,int ) ;

errno_t
sock_getsockname(socket_t sock, struct sockaddr *sockname, int socknamelen)
{
 int error;
 struct sockaddr *sa = ((void*)0);

 if (sock == ((void*)0) || sockname == ((void*)0) || socknamelen < 0)
  return (EINVAL);

 socket_lock(sock, 1);
 error = sogetaddr_locked(sock, &sa, 0);
 socket_unlock(sock, 1);
 if (error == 0) {
  if (socknamelen > sa->sa_len)
   socknamelen = sa->sa_len;
  memcpy(sockname, sa, socknamelen);
  FREE(sa, M_SONAME);
 }
 return (error);
}
