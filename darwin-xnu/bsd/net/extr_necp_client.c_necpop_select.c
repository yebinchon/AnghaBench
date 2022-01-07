
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
struct necp_fd_data {int dummy; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef int proc_t ;
struct TYPE_2__ {scalar_t__ fg_data; } ;



 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 int POLLIN ;
 int necp_fd_poll (struct necp_fd_data*,int,void*,int ,int ) ;
 int vfs_context_proc (int ) ;

__attribute__((used)) static int
necpop_select(struct fileproc *fp, int which, void *wql, vfs_context_t ctx)
{
#pragma unused(fp, which, wql, ctx)
 return (0);
 struct necp_fd_data *fd_data = ((void*)0);
 int revents = 0;
 int events = 0;
 proc_t procp;

 fd_data = (struct necp_fd_data *)fp->f_fglob->fg_data;
 if (fd_data == ((void*)0)) {
  return (0);
 }

 procp = vfs_context_proc(ctx);

 switch (which) {
  case 128: {
   events = POLLIN;
   break;
  }

  default: {
   return (1);
  }
 }

 NECP_FD_LOCK(fd_data);
 revents = necp_fd_poll(fd_data, events, wql, procp, 0);
 NECP_FD_UNLOCK(fd_data);

 return ((events & revents) ? 1 : 0);
}
