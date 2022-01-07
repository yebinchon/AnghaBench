
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int vm_map_entry_t ;
typedef int ppnum_t ;
typedef int kern_return_t ;


 int DFR ;
 int KERN_SUCCESS ;
 int LAPIC_DFR_FLAT ;
 int LAPIC_LDR_SHIFT ;
 int LAPIC_SIZE ;
 int LAPIC_WRITE (int ,int) ;
 int LDR ;
 int TRUE ;
 int VM_KERN_MEMORY_IOKIT ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int VM_WIMG_IO ;
 int assert (int) ;
 int get_cpu_number () ;
 scalar_t__ i386_btop (int ) ;
 int kernel_map ;
 int lapic_pbase ;
 scalar_t__ lapic_vbase ;
 int panic (char*,int) ;
 int pmap_enter (int ,scalar_t__,int ,int,int ,int ,int ) ;
 int pmap_kernel () ;
 int round_page (int ) ;
 int vm_map_find_space (int ,scalar_t__*,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ vm_map_min (int ) ;
 int vm_map_unlock (int ) ;

__attribute__((used)) static void
legacy_init(void)
{
 int result;
 kern_return_t kr;
 vm_map_entry_t entry;
 vm_map_offset_t lapic_vbase64;


 if (lapic_vbase == 0) {
  lapic_vbase64 = (vm_offset_t)vm_map_min(kernel_map);
  result = vm_map_find_space(kernel_map,
        &lapic_vbase64,
        round_page(LAPIC_SIZE), 0,
        0,
        VM_MAP_KERNEL_FLAGS_NONE,
        VM_KERN_MEMORY_IOKIT,
        &entry);


  lapic_vbase = (vm_offset_t) lapic_vbase64;
  if (result != KERN_SUCCESS) {
   panic("legacy_init: vm_map_find_entry FAILED (err=%d)", result);
  }
  vm_map_unlock(kernel_map);
  kr = pmap_enter(pmap_kernel(),
                  lapic_vbase,
                  (ppnum_t) i386_btop(lapic_pbase),
                  VM_PROT_READ|VM_PROT_WRITE,
                  VM_PROT_NONE,
                  VM_WIMG_IO,
                  TRUE);

  assert(kr == KERN_SUCCESS);
 }





 LAPIC_WRITE(DFR, LAPIC_DFR_FLAT);
 LAPIC_WRITE(LDR, (get_cpu_number()) << LAPIC_LDR_SHIFT);
}
