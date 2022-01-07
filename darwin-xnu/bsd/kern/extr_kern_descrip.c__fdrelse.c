
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct filedesc* p_fd; } ;
struct filedesc {int fd_freefile; int fd_lastfile; int* fd_ofileflags; int ** fd_ofiles; } ;


 int UF_RESERVED ;
 int panic (char*) ;
 int procfdtbl_clearfd (struct proc*,int) ;

__attribute__((used)) static void
_fdrelse(struct proc * p, int fd)
{
 struct filedesc *fdp = p->p_fd;
 int nfd = 0;

 if (fd < fdp->fd_freefile)
  fdp->fd_freefile = fd;




 procfdtbl_clearfd(p, fd);

 while ((nfd = fdp->fd_lastfile) > 0 &&
   fdp->fd_ofiles[nfd] == ((void*)0) &&
   !(fdp->fd_ofileflags[nfd] & UF_RESERVED))

  fdp->fd_lastfile--;
}
