
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voucher_name ;
typedef int vm_size_t ;
typedef int uint8_t ;
struct host_create_mach_voucher_args {scalar_t__ recipes_size; int voucher; int recipes; int host; } ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_voucher_t ;
typedef int ipc_port_t ;
typedef scalar_t__ host_t ;


 int CAST_USER_ADDR_T (int ) ;
 scalar_t__ HOST_NULL ;
 int IPC_PORT_NULL ;
 int IV_NULL ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_MEMORY_ERROR ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE ;
 scalar_t__ MACH_VOUCHER_TRAP_STACK_LIMIT ;
 scalar_t__ MIG_ARRAY_TOO_LARGE ;
 int convert_voucher_to_port (int ) ;
 scalar_t__ copyin (int ,void*,int) ;
 scalar_t__ copyout (int *,int ,int) ;
 int current_space () ;
 scalar_t__ host_create_mach_voucher (scalar_t__,int *,int,int *) ;
 int ipc_port_copyout_send (int ,int ) ;
 int * kalloc (int ) ;
 int kfree (int *,int ) ;
 scalar_t__ port_name_to_host (int ) ;

kern_return_t
host_create_mach_voucher_trap(struct host_create_mach_voucher_args *args)
{
 host_t host = port_name_to_host(args->host);
 ipc_voucher_t new_voucher = IV_NULL;
 ipc_port_t voucher_port = IPC_PORT_NULL;
 mach_port_name_t voucher_name = 0;
 kern_return_t kr = 0;

 if (host == HOST_NULL)
  return MACH_SEND_INVALID_DEST;

 if (args->recipes_size < 0)
  return KERN_INVALID_ARGUMENT;
 else if (args->recipes_size > MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE)
  return MIG_ARRAY_TOO_LARGE;

 if (args->recipes_size < MACH_VOUCHER_TRAP_STACK_LIMIT) {

  uint8_t krecipes[args->recipes_size];
  if (copyin(CAST_USER_ADDR_T(args->recipes), (void *)krecipes, args->recipes_size)) {
   kr = KERN_MEMORY_ERROR;
   goto done;
  }
  kr = host_create_mach_voucher(host, krecipes, args->recipes_size, &new_voucher);
 } else {
  uint8_t *krecipes = kalloc((vm_size_t)args->recipes_size);
  if (!krecipes) {
   kr = KERN_RESOURCE_SHORTAGE;
   goto done;
  }

  if (copyin(CAST_USER_ADDR_T(args->recipes), (void *)krecipes, args->recipes_size)) {
   kfree(krecipes, (vm_size_t)args->recipes_size);
   kr = KERN_MEMORY_ERROR;
   goto done;
  }

  kr = host_create_mach_voucher(host, krecipes, args->recipes_size, &new_voucher);
  kfree(krecipes, (vm_size_t)args->recipes_size);
 }

 if (kr == 0) {
  voucher_port = convert_voucher_to_port(new_voucher);
  voucher_name = ipc_port_copyout_send(voucher_port, current_space());

  kr = copyout(&voucher_name, args->voucher, sizeof(voucher_name));
 }

done:
 return kr;
}
