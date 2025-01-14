
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct socket {int so_flags; scalar_t__ e_pid; int e_uuid; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_8__ {scalar_t__ p_pid; int p_uuid; } ;


 TYPE_1__* PROC_NULL ;
 int SOF_DELEGATED ;
 TYPE_1__* current_proc () ;
 TYPE_1__* flow_divert_find_proc_by_uuid (int ) ;
 TYPE_1__* proc_find (scalar_t__) ;
 int proc_rele (TYPE_1__*) ;
 scalar_t__ uuid_compare (int ,int ) ;

__attribute__((used)) static int
flow_divert_get_src_proc(struct socket *so, proc_t *proc)
{
 int release = 0;

 if (so->so_flags & SOF_DELEGATED) {
  if ((*proc)->p_pid != so->e_pid) {
   *proc = proc_find(so->e_pid);
   release = 1;
  } else if (uuid_compare((*proc)->p_uuid, so->e_uuid)) {
   *proc = flow_divert_find_proc_by_uuid(so->e_uuid);
   release = 1;
  }
 } else if (*proc == PROC_NULL) {
  *proc = current_proc();
 }

 if (*proc != PROC_NULL) {
  if ((*proc)->p_pid == 0) {
   if (release) {
    proc_rele(*proc);
   }
   release = 0;
   *proc = PROC_NULL;
  }
 }

 return release;
}
