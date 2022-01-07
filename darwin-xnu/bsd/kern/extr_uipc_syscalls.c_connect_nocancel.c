
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_type; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connect_nocancel_args {int s; int namelen; int name; } ;
typedef int ss ;
typedef int proc_t ;
typedef int int32_t ;
typedef int boolean_t ;


 int AUDIT_ARG (int,int) ;
 int EBADF ;
 int EINTR ;
 int ERESTART ;
 int FREE (struct sockaddr*,int ) ;
 int M_SONAME ;
 struct sockaddr* SA (struct sockaddr_storage*) ;
 scalar_t__ SOCK_DGRAM ;
 int connectit (struct socket*,struct sockaddr*) ;
 int file_drop (int) ;
 int file_socket (int,struct socket**) ;
 int getsockaddr (struct socket*,struct sockaddr**,int ,int,int) ;
 int getsockaddr_s (struct socket*,struct sockaddr_storage*,int ,int,int) ;

int
connect_nocancel(proc_t p, struct connect_nocancel_args *uap, int32_t *retval)
{
#pragma unused(p, retval)
 struct socket *so;
 struct sockaddr_storage ss;
 struct sockaddr *sa = ((void*)0);
 int error;
 int fd = uap->s;
 boolean_t dgram;

 AUDIT_ARG(fd, uap->s);
 error = file_socket(fd, &so);
 if (error != 0)
  return (error);
 if (so == ((void*)0)) {
  error = EBADF;
  goto out;
 }





 dgram = (so->so_type == SOCK_DGRAM);


 if (uap->namelen > sizeof (ss)) {
  error = getsockaddr(so, &sa, uap->name, uap->namelen, !dgram);
 } else {
  error = getsockaddr_s(so, &ss, uap->name, uap->namelen, !dgram);
  if (error == 0)
   sa = (struct sockaddr *)&ss;
 }
 if (error != 0)
  goto out;

 error = connectit(so, sa);

 if (sa != ((void*)0) && sa != SA(&ss))
  FREE(sa, M_SONAME);
 if (error == ERESTART)
  error = EINTR;
out:
 file_drop(fd);
 return (error);
}
