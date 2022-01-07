
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int MAC_CHECK (int ,int ) ;
 int mac_vm_enforce ;
 int proc_check_run_cs_invalid ;

int
mac_proc_check_run_cs_invalid(proc_t proc)
{
 int error;







 MAC_CHECK(proc_check_run_cs_invalid, proc);

 return (error);
}
