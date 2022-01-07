
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef scalar_t__ proc_t ;


 int proc_is64bit (scalar_t__) ;
 scalar_t__ vfs_context_proc (int ) ;

int
vfs_context_is64bit(vfs_context_t ctx)
{
 proc_t proc = vfs_context_proc(ctx);

 if (proc)
  return(proc_is64bit(proc));
 return(0);
}
