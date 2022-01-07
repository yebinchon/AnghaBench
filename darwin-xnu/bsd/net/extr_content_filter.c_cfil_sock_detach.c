
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_flags; scalar_t__ so_usecount; int * so_cfil; } ;
typedef int errno_t ;
struct TYPE_2__ {int cfs_sock_detached; } ;


 scalar_t__ IS_UDP (struct socket*) ;
 int OSIncrementAtomic (int *) ;
 int SOF_CONTENT_FILTER ;
 int VERIFY (int) ;
 int cfil_db_free (struct socket*) ;
 int cfil_info_free (int *) ;
 TYPE_1__ cfil_stats ;

errno_t
cfil_sock_detach(struct socket *so)
{
 if (IS_UDP(so)) {
  cfil_db_free(so);
  return (0);
 }

 if (so->so_cfil) {
  if (so->so_flags & SOF_CONTENT_FILTER) {
   so->so_flags &= ~SOF_CONTENT_FILTER;
   VERIFY(so->so_usecount > 0);
   so->so_usecount--;
  }
  cfil_info_free(so->so_cfil);
  so->so_cfil = ((void*)0);
  OSIncrementAtomic(&cfil_stats.cfs_sock_detached);
 }
 return (0);
}
