
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int sigset_t ;
typedef scalar_t__ proc_t ;


 int proc_pendingsignals (scalar_t__,int ) ;
 scalar_t__ vfs_context_proc (int ) ;

int
vfs_context_issignal(vfs_context_t ctx, sigset_t mask)
{
 proc_t p = vfs_context_proc(ctx);
 if (p)
  return(proc_pendingsignals(p, mask));
 return(0);
}
