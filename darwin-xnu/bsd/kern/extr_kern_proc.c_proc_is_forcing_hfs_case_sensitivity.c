
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_vfs_iopolicy; } ;


 int P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY ;

int
proc_is_forcing_hfs_case_sensitivity(proc_t p)
{
 return (p->p_vfs_iopolicy & P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY) ? 1 : 0;
}
