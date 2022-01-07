
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* user_addr_t ;
struct sysctl_req {size_t oldlen; size_t newlen; int lock; int newfunc; int oldfunc; void* newptr; void* oldptr; struct proc* p; } ;
struct proc {int dummy; } ;


 int bzero (struct sysctl_req*,int) ;
 int sysctl_new_user ;
 int sysctl_old_user ;

void sysctl_create_user_req(struct sysctl_req *req, struct proc *p, user_addr_t oldp,
       size_t oldlen, user_addr_t newp, size_t newlen)
{
 bzero(req, sizeof(*req));

 req->p = p;

 req->oldlen = oldlen;
 req->oldptr = oldp;

 if (newlen) {
  req->newlen = newlen;
  req->newptr = newp;
 }

 req->oldfunc = sysctl_old_user;
 req->newfunc = sysctl_new_user;
 req->lock = 1;

 return;
}
