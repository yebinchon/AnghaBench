
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;
struct proc_uuid_policy_entry {int flags; } ;


 int LIST_REMOVE (struct proc_uuid_policy_entry*,int ) ;
 int entries ;
 int proc_uuid_policy_count ;
 struct proc_uuid_policy_entry* proc_uuid_policy_lookup_locked (int ) ;

__attribute__((used)) static struct proc_uuid_policy_entry *
proc_uuid_policy_remove_locked(uuid_t uuid, uint32_t flags, int *should_delete)
{
 struct proc_uuid_policy_entry *foundentry = ((void*)0);
 if (should_delete) {
  *should_delete = 0;
 }

 foundentry = proc_uuid_policy_lookup_locked(uuid);
 if (foundentry) {
  if (foundentry->flags == flags) {
   LIST_REMOVE(foundentry, entries);
   proc_uuid_policy_count--;
   if (should_delete) {
    *should_delete = 1;
   }
  } else {
   foundentry->flags &= ~flags;
  }
 }

 return foundentry;
}
