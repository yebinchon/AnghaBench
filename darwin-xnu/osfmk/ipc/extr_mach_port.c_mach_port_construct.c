
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int flags; int mpl; } ;
typedef TYPE_1__ mach_port_options_t ;
typedef int mach_port_name_t ;
typedef int * mach_port_info_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_2__* ipc_port_t ;
typedef int ipc_object_t ;
struct TYPE_9__ {scalar_t__ ip_context; } ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_MAKE_SEND ;
 int MACH_MSG_TYPE_PORT_SEND ;
 int MACH_PORT_DENAP_RECEIVER ;
 int MACH_PORT_IMPORTANCE_RECEIVER ;
 int MACH_PORT_LIMITS_INFO ;
 int MACH_PORT_TEMPOWNER ;
 int MPO_CONTEXT_AS_GUARD ;
 int MPO_DENAP_RECEIVER ;
 int MPO_IMPORTANCE_RECEIVER ;
 int MPO_INSERT_SEND_RIGHT ;
 int MPO_QLIMIT ;
 int MPO_STRICT ;
 int MPO_TEMPOWNER ;
 int assert (int) ;
 int ip_unlock (TYPE_2__*) ;
 scalar_t__ ipc_object_copyin (scalar_t__,int ,int ,int *) ;
 scalar_t__ ipc_port_alloc (scalar_t__,int *,TYPE_2__**) ;
 int mach_port_destruct (scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ mach_port_guard_locked (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ mach_port_insert_right (scalar_t__,int ,TYPE_2__*,int ) ;
 scalar_t__ mach_port_set_attributes (scalar_t__,int ,int ,int *,int) ;

kern_return_t
mach_port_construct(
 ipc_space_t space,
 mach_port_options_t *options,
 uint64_t context,
 mach_port_name_t *name)
{
 kern_return_t kr;
 ipc_port_t port;

 if (space == IS_NULL)
  return (KERN_INVALID_TASK);


 kr = ipc_port_alloc(space, name, &port);
 if (kr != KERN_SUCCESS)
  return kr;


 if (options->flags & MPO_CONTEXT_AS_GUARD) {
  kr = mach_port_guard_locked(port, (uint64_t) context, (options->flags & MPO_STRICT));

  assert(kr == KERN_SUCCESS);
 } else {
  port->ip_context = context;
 }


 ip_unlock(port);



 if (options->flags & MPO_QLIMIT) {
  kr = mach_port_set_attributes(space, *name, MACH_PORT_LIMITS_INFO,
           (mach_port_info_t)&options->mpl, sizeof(options->mpl)/sizeof(int));
  if (kr != KERN_SUCCESS)
   goto cleanup;
 }

 if (options->flags & MPO_TEMPOWNER) {
  kr = mach_port_set_attributes(space, *name, MACH_PORT_TEMPOWNER, ((void*)0), 0);
  if (kr != KERN_SUCCESS)
   goto cleanup;
 }

 if (options->flags & MPO_IMPORTANCE_RECEIVER) {
  kr = mach_port_set_attributes(space, *name, MACH_PORT_IMPORTANCE_RECEIVER, ((void*)0), 0);
  if (kr != KERN_SUCCESS)
   goto cleanup;
 }

 if (options->flags & MPO_DENAP_RECEIVER) {
  kr = mach_port_set_attributes(space, *name, MACH_PORT_DENAP_RECEIVER, ((void*)0), 0);
  if (kr != KERN_SUCCESS)
   goto cleanup;
 }

 if (options->flags & MPO_INSERT_SEND_RIGHT) {
  kr = ipc_object_copyin(space, *name, MACH_MSG_TYPE_MAKE_SEND, (ipc_object_t *)&port);
  if (kr != KERN_SUCCESS)
   goto cleanup;

  kr = mach_port_insert_right(space, *name, port, MACH_MSG_TYPE_PORT_SEND);
  if (kr != KERN_SUCCESS)
   goto cleanup;
 }

 return KERN_SUCCESS;

cleanup:

 (void) mach_port_destruct(space, *name, 0, context);
 return kr;
}
