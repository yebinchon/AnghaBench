
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swapout_io_completion {scalar_t__ swp_io_busy; } ;


 int VM_SWAPOUT_LIMIT_MAX ;
 int assert (int) ;
 struct swapout_io_completion* vm_swapout_ctx ;
 int vm_swapout_soc_busy ;

__attribute__((used)) static struct swapout_io_completion *
vm_swapout_find_free_soc(void)
{ int i;

        for (i = 0; i < VM_SWAPOUT_LIMIT_MAX; i++) {
         if (vm_swapout_ctx[i].swp_io_busy == 0)
          return (&vm_swapout_ctx[i]);
 }
 assert(vm_swapout_soc_busy == VM_SWAPOUT_LIMIT_MAX);

 return ((void*)0);
}
