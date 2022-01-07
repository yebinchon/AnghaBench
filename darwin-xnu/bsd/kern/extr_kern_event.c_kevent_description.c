
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent_internal_s {int * ext; int data; int fflags; int udata; int flags; int filter; int ident; } ;


 int snprintf (char*,size_t,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

char *
kevent_description(struct kevent_internal_s *kevp, char *s, size_t n)
{
 snprintf(s, n,
     "kevent="
     "{.ident=%#llx, .filter=%d, .flags=%#x, .udata=%#llx, .fflags=%#x, .data=%#llx, .ext[0]=%#llx, .ext[1]=%#llx}",
     kevp->ident,
     kevp->filter,
     kevp->flags,
     kevp->udata,
     kevp->fflags,
     kevp->data,
     kevp->ext[0],
     kevp->ext[1] );

 return (s);
}
