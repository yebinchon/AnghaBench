
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ uint8_t ;
typedef int sz ;
struct mach_voucher_extract_attr_recipe_args {int recipe_size; int recipe; int key; int voucher_name; } ;
typedef int mach_voucher_attr_raw_recipe_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_voucher_t ;


 int CAST_USER_ADDR_T (int ) ;
 scalar_t__ IV_NULL ;
 scalar_t__ KERN_MEMORY_ERROR ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE ;
 scalar_t__ MACH_VOUCHER_TRAP_STACK_LIMIT ;
 scalar_t__ MIG_ARRAY_TOO_LARGE ;
 int assert (int) ;
 scalar_t__ convert_port_name_to_voucher (int ) ;
 scalar_t__ copyin (int ,void*,scalar_t__) ;
 scalar_t__ copyout (scalar_t__*,int ,int) ;
 int ipc_voucher_release (scalar_t__) ;
 scalar_t__* kalloc (int ) ;
 int kfree (scalar_t__*,int ) ;
 scalar_t__ mach_voucher_extract_attr_recipe (scalar_t__,int ,int ,scalar_t__*) ;

kern_return_t
mach_voucher_extract_attr_recipe_trap(struct mach_voucher_extract_attr_recipe_args *args)
{
 ipc_voucher_t voucher = IV_NULL;
 kern_return_t kr = KERN_SUCCESS;
 mach_msg_type_number_t sz = 0;

 if (copyin(args->recipe_size, (void *)&sz, sizeof(sz)))
  return KERN_MEMORY_ERROR;

 if (sz > MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE)
  return MIG_ARRAY_TOO_LARGE;

 voucher = convert_port_name_to_voucher(args->voucher_name);
 if (voucher == IV_NULL)
  return MACH_SEND_INVALID_DEST;

 mach_msg_type_number_t max_sz = sz;

 if (sz < MACH_VOUCHER_TRAP_STACK_LIMIT) {

  uint8_t krecipe[sz];
  if (copyin(CAST_USER_ADDR_T(args->recipe), (void *)krecipe, sz)) {
   kr = KERN_MEMORY_ERROR;
   goto done;
  }
  kr = mach_voucher_extract_attr_recipe(voucher, args->key,
                                        (mach_voucher_attr_raw_recipe_t)krecipe, &sz);
  assert(sz <= max_sz);

  if (kr == KERN_SUCCESS && sz > 0)
   kr = copyout(krecipe, CAST_USER_ADDR_T(args->recipe), sz);
 } else {
  uint8_t *krecipe = kalloc((vm_size_t)max_sz);
  if (!krecipe) {
   kr = KERN_RESOURCE_SHORTAGE;
   goto done;
  }

  if (copyin(CAST_USER_ADDR_T(args->recipe), (void *)krecipe, sz)) {
   kfree(krecipe, (vm_size_t)max_sz);
   kr = KERN_MEMORY_ERROR;
   goto done;
  }

  kr = mach_voucher_extract_attr_recipe(voucher, args->key,
                                        (mach_voucher_attr_raw_recipe_t)krecipe, &sz);
  assert(sz <= max_sz);

  if (kr == KERN_SUCCESS && sz > 0)
   kr = copyout(krecipe, CAST_USER_ADDR_T(args->recipe), sz);
  kfree(krecipe, (vm_size_t)max_sz);
 }

 if (kr == KERN_SUCCESS)
  kr = copyout(&sz, args->recipe_size, sizeof(sz));

done:
 ipc_voucher_release(voucher);
 return kr;
}
