
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_delegate_args {int epid; int protocol; int type; int domain; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int socket_common (struct proc*,int ,int ,int ,int ,int *,int) ;

int
socket_delegate(struct proc *p,
  struct socket_delegate_args *uap,
  int32_t *retval)
{
 return socket_common(p, uap->domain, uap->type, uap->protocol,
     uap->epid, retval, 1);
}
