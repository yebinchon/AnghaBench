
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* proc_t ;
struct TYPE_5__ {TYPE_1__* p_fd; } ;
struct TYPE_4__ {int fd_kqhashlock; } ;


 int lck_mtx_unlock (int *) ;

__attribute__((used)) static inline void
kqhash_unlock(proc_t p)
{
 lck_mtx_unlock(&p->p_fd->fd_kqhashlock);
}
