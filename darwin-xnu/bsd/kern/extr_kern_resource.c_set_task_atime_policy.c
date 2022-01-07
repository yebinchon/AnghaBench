
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct proc {int p_vfs_iopolicy; } ;


 int IOPOL_ATIME_UPDATES_OFF ;
 int OSBitAndAtomic16 (int ,int *) ;
 int OSBitOrAtomic16 (int ,int *) ;
 scalar_t__ P_VFS_IOPOLICY_ATIME_UPDATES ;

__attribute__((used)) static inline void
set_task_atime_policy(struct proc *p, int policy)
{
 if (policy == IOPOL_ATIME_UPDATES_OFF) {
  OSBitOrAtomic16((uint16_t)P_VFS_IOPOLICY_ATIME_UPDATES, &p->p_vfs_iopolicy);
 } else {
  OSBitAndAtomic16(~((uint16_t)P_VFS_IOPOLICY_ATIME_UPDATES), &p->p_vfs_iopolicy);
 }
}
