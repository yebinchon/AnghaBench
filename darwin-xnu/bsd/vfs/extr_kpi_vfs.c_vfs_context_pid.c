
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;


 int proc_pid (int ) ;
 int vfs_context_proc (int ) ;

int
vfs_context_pid(vfs_context_t ctx)
{
 return (proc_pid(vfs_context_proc(ctx)));
}
