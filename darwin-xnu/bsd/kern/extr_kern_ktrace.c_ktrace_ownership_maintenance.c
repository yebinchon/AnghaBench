
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * proc_t ;


 int ktrace_assert_lock_held () ;
 int ktrace_owning_pid ;
 scalar_t__ ktrace_owning_unique_id ;
 int ktrace_release_ownership () ;
 int * proc_find (int ) ;
 int proc_rele (int *) ;
 scalar_t__ proc_uniqueid (int *) ;

__attribute__((used)) static void
ktrace_ownership_maintenance(void)
{
 ktrace_assert_lock_held();


 if (ktrace_owning_unique_id == 0) {
  return;
 }



 proc_t owning_proc = proc_find(ktrace_owning_pid);

 if (owning_proc != ((void*)0)) {

  if (proc_uniqueid(owning_proc) != ktrace_owning_unique_id) {
   ktrace_release_ownership();
  }

  proc_rele(owning_proc);
 } else {
  ktrace_release_ownership();
 }
}
