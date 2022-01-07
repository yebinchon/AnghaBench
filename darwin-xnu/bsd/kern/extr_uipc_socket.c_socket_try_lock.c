
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* so_proto; } ;
typedef int lck_mtx_t ;
struct TYPE_4__ {TYPE_1__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_3__ {int * dom_mtx; } ;


 int lck_mtx_try_lock (int *) ;
 int * stub1 (struct socket*,int ) ;

int
socket_try_lock(struct socket *so)
{
 lck_mtx_t *mtx;

 if (so->so_proto->pr_getlock != ((void*)0))
  mtx = (*so->so_proto->pr_getlock)(so, 0);
 else
  mtx = so->so_proto->pr_domain->dom_mtx;

 return (lck_mtx_try_lock(mtx));
}
