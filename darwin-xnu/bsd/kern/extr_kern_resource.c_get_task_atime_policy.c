
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_vfs_iopolicy; } ;


 int IOPOL_ATIME_UPDATES_DEFAULT ;
 int IOPOL_ATIME_UPDATES_OFF ;
 int P_VFS_IOPOLICY_ATIME_UPDATES ;

__attribute__((used)) static inline int
get_task_atime_policy(struct proc *p)
{
 return (p->p_vfs_iopolicy & P_VFS_IOPOLICY_ATIME_UPDATES)? IOPOL_ATIME_UPDATES_OFF: IOPOL_ATIME_UPDATES_DEFAULT;
}
