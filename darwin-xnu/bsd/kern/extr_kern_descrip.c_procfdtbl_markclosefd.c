
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {TYPE_1__* p_fd; } ;
struct TYPE_2__ {int* fd_ofileflags; } ;


 int UF_CLOSING ;
 int UF_RESERVED ;

void
procfdtbl_markclosefd(struct proc * p, int fd)
{
        p->p_fd->fd_ofileflags[fd] |= (UF_RESERVED | UF_CLOSING);
}
