
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
 int PMAP__NEST ;
 int VM_KERNEL_ADDRHIDE (int ) ;
 int pmap_nest_internal (int ,int ,int ,int ,int ) ;

kern_return_t pmap_nest(
 pmap_t grand,
 pmap_t subord,
 addr64_t vstart,
 addr64_t nstart,
 uint64_t size)
{
 kern_return_t kr = KERN_FAILURE;

 PMAP_TRACE(2, PMAP_CODE(PMAP__NEST) | DBG_FUNC_START,
            VM_KERNEL_ADDRHIDE(grand), VM_KERNEL_ADDRHIDE(subord),
            VM_KERNEL_ADDRHIDE(vstart));

 kr = pmap_nest_internal(grand, subord, vstart, nstart, size);

 PMAP_TRACE(2, PMAP_CODE(PMAP__NEST) | DBG_FUNC_END, kr);

 return kr;
}
