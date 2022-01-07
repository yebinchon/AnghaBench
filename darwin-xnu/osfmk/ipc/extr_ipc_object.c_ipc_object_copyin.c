
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_object_t ;
typedef TYPE_1__* ipc_entry_t ;
struct TYPE_7__ {int task_imp_base; } ;
struct TYPE_6__ {int ie_bits; } ;


 scalar_t__ IE_BITS_TYPE (int ) ;
 scalar_t__ IP_NULL ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int TRUE ;
 TYPE_5__* current_task () ;
 int ip_release (scalar_t__) ;
 int ipc_entry_dealloc (int ,int ,TYPE_1__*) ;
 int ipc_importance_task_drop_internal_assertion (int ,int) ;
 scalar_t__ ipc_importance_task_is_any_receiver_type (int ) ;
 int ipc_notify_port_deleted (scalar_t__,int ) ;
 scalar_t__ ipc_right_copyin (int ,int ,TYPE_1__*,int ,int ,int *,scalar_t__*,scalar_t__*,int*) ;
 scalar_t__ ipc_right_lookup_write (int ,int ,TYPE_1__**) ;
 int is_write_unlock (int ) ;

kern_return_t
ipc_object_copyin(
 ipc_space_t space,
 mach_port_name_t name,
 mach_msg_type_name_t msgt_name,
 ipc_object_t *objectp)
{
 ipc_entry_t entry;
 ipc_port_t soright;
 ipc_port_t release_port;
 kern_return_t kr;
 int assertcnt = 0;







 kr = ipc_right_lookup_write(space, name, &entry);
 if (kr != KERN_SUCCESS)
  return kr;


 release_port = IP_NULL;
 kr = ipc_right_copyin(space, name, entry,
         msgt_name, TRUE,
         objectp, &soright,
         &release_port,
         &assertcnt);
 if (IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_NONE)
  ipc_entry_dealloc(space, name, entry);
 is_write_unlock(space);







 if (release_port != IP_NULL)
  ip_release(release_port);

 if ((kr == KERN_SUCCESS) && (soright != IP_NULL))
  ipc_notify_port_deleted(soright, name);

 return kr;
}
