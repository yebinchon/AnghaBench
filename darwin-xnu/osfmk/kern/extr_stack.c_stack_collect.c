
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int spl_t ;


 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE ;
 unsigned int STACK_CACHE_SIZE ;
 int VM_MAP_PAGE_MASK (int ) ;
 int VM_MAP_REMOVE_KUNWIRE ;
 int kernel_map ;
 scalar_t__ kernel_stack_size ;
 scalar_t__ last_stack_tick ;
 int panic (char*) ;
 unsigned int processor_count ;
 int splsched () ;
 int splx (int ) ;
 scalar_t__ stack_collect_tick ;
 unsigned int stack_free_count ;
 scalar_t__ stack_free_delta ;
 scalar_t__ stack_free_list ;
 unsigned int stack_free_target ;
 int stack_lock () ;
 scalar_t__ stack_next (scalar_t__) ;
 int stack_total ;
 int stack_unlock () ;
 scalar_t__ vm_map_remove (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,int ) ;

void
stack_collect(void)
{
 if (stack_collect_tick != last_stack_tick) {
  unsigned int target;
  vm_offset_t stack;
  spl_t s;

  s = splsched();
  stack_lock();

  target = stack_free_target + (STACK_CACHE_SIZE * processor_count);
  target += (stack_free_delta >= 0)? stack_free_delta: -stack_free_delta;

  while (stack_free_count > target) {
   stack = stack_free_list;
   stack_free_list = stack_next(stack);
   stack_free_count--; stack_total--;
   stack_unlock();
   splx(s);
   stack = (vm_offset_t)vm_map_trunc_page(
    stack,
    VM_MAP_PAGE_MASK(kernel_map));
   stack -= PAGE_SIZE;
   if (vm_map_remove(
        kernel_map,
        stack,
        stack + kernel_stack_size+(2*PAGE_SIZE),
        VM_MAP_REMOVE_KUNWIRE)
       != KERN_SUCCESS)
    panic("stack_collect: vm_map_remove");
   stack = 0;

   s = splsched();
   stack_lock();

   target = stack_free_target + (STACK_CACHE_SIZE * processor_count);
   target += (stack_free_delta >= 0)? stack_free_delta: -stack_free_delta;
  }

  last_stack_tick = stack_collect_tick;

  stack_unlock();
  splx(s);
 }
}
