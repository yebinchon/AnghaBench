
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vfs_context_current () ;
 int vfs_context_cwd (int ) ;

vnode_t
current_workingdir(void)
{
 return vfs_context_cwd(vfs_context_current());
}
