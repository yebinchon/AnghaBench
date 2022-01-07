
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swapout_io_completion {scalar_t__ swp_io_done; } ;


 int VM_SWAPOUT_LIMIT_MAX ;
 struct swapout_io_completion* vm_swapout_ctx ;
 scalar_t__ vm_swapout_soc_done ;

__attribute__((used)) static struct swapout_io_completion *
vm_swapout_find_done_soc(void)
{ int i;

        if (vm_swapout_soc_done) {
         for (i = 0; i < VM_SWAPOUT_LIMIT_MAX; i++) {
          if (vm_swapout_ctx[i].swp_io_done)
           return (&vm_swapout_ctx[i]);
  }
 }
 return ((void*)0);
}
