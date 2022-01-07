
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ last_pid; scalar_t__ last_upid; int so_vuuid; int last_uuid; } ;
typedef scalar_t__ proc_t ;


 scalar_t__ PROC_NULL ;
 scalar_t__ current_proc () ;
 int proc_getexecutableuuid (scalar_t__,int ,int) ;
 scalar_t__ proc_pid (scalar_t__) ;
 int proc_pidoriginatoruuid (int ,int) ;
 scalar_t__ proc_uniqueid (scalar_t__) ;

void
so_update_last_owner_locked(struct socket *so, proc_t self)
{
 if (so->last_pid != 0) {




  if (self == PROC_NULL)
   self = current_proc();

  if (so->last_upid != proc_uniqueid(self) ||
      so->last_pid != proc_pid(self)) {
   so->last_upid = proc_uniqueid(self);
   so->last_pid = proc_pid(self);
   proc_getexecutableuuid(self, so->last_uuid,
       sizeof (so->last_uuid));
  }
  proc_pidoriginatoruuid(so->so_vuuid, sizeof(so->so_vuuid));
 }
}
