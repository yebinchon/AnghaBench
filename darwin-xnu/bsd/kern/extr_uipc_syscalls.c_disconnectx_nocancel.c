
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct proc {int dummy; } ;
struct disconnectx_args {int s; int cid; int aid; } ;


 int EBADF ;
 int file_drop (int) ;
 int file_socket (int,struct socket**) ;
 int sodisconnectx (struct socket*,int ,int ) ;

__attribute__((used)) static int
disconnectx_nocancel(struct proc *p, struct disconnectx_args *uap, int *retval)
{
#pragma unused(p, retval)
 struct socket *so;
 int fd = uap->s;
 int error;

 error = file_socket(fd, &so);
 if (error != 0)
  return (error);
 if (so == ((void*)0)) {
  error = EBADF;
  goto out;
 }

 error = sodisconnectx(so, uap->aid, uap->cid);
out:
 file_drop(fd);
 return (error);
}
