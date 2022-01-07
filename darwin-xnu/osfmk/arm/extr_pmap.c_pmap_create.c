
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_size_t ;
typedef TYPE_1__* pmap_t ;
typedef int ledger_t ;
typedef int boolean_t ;
struct TYPE_6__ {int asid; int vasid; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PMAP_CODE (int ) ;
 TYPE_1__* PMAP_NULL ;
 int PMAP_TRACE (int,int,int ,int ,...) ;
 int PMAP__CREATE ;
 int VM_KERNEL_ADDRHIDE (TYPE_1__*) ;
 int ledger_dereference (int ) ;
 int ledger_reference (int ) ;
 TYPE_1__* pmap_create_internal (int ,int ,int ) ;

pmap_t
pmap_create(
 ledger_t ledger,
 vm_map_size_t size,
 boolean_t is_64bit)
{
 pmap_t pmap;

 PMAP_TRACE(1, PMAP_CODE(PMAP__CREATE) | DBG_FUNC_START, size, is_64bit);

 ledger_reference(ledger);

 pmap = pmap_create_internal(ledger, size, is_64bit);

 if (pmap == PMAP_NULL) {
  ledger_dereference(ledger);
 }

 PMAP_TRACE(1, PMAP_CODE(PMAP__CREATE) | DBG_FUNC_END, VM_KERNEL_ADDRHIDE(pmap), pmap->vasid, pmap->asid);

 return pmap;
}
