
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pmap_t ;
typedef int kern_return_t ;
typedef int addr64_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERN_FAILURE ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE (int,int,int ,...) ;
 int PMAP__UNNEST ;
 int VM_KERNEL_ADDRHIDE (int ) ;
 int pmap_unnest_options_internal (int ,int ,int ,unsigned int) ;

kern_return_t
pmap_unnest_options(
 pmap_t grand,
 addr64_t vaddr,
 uint64_t size,
 unsigned int option)
{
 kern_return_t kr = KERN_FAILURE;

 PMAP_TRACE(2, PMAP_CODE(PMAP__UNNEST) | DBG_FUNC_START,
            VM_KERNEL_ADDRHIDE(grand), VM_KERNEL_ADDRHIDE(vaddr));

 kr = pmap_unnest_options_internal(grand, vaddr, size, option);

 PMAP_TRACE(2, PMAP_CODE(PMAP__UNNEST) | DBG_FUNC_END, kr);

 return kr;
}
