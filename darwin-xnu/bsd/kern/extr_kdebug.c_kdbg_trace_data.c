
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint64_t ;
struct proc {long p_pid; long p_uniqueid; } ;



void
kdbg_trace_data(struct proc *proc, long *arg_pid, long *arg_uniqueid)
{
 if (!proc) {
  *arg_pid = 0;
  *arg_uniqueid = 0;
 } else {
  *arg_pid = proc->p_pid;
  *arg_uniqueid = proc->p_uniqueid;
  if ((uint64_t) *arg_uniqueid != proc->p_uniqueid) {
   *arg_uniqueid = 0;
  }
 }
}
