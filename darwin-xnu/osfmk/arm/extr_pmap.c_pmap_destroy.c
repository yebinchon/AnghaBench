
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int ledger_t ;
struct TYPE_5__ {int ledger; int asid; int vasid; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE (int,int,...) ;
 int PMAP__DESTROY ;
 int VM_KERNEL_ADDRHIDE (TYPE_1__*) ;
 int ledger_dereference (int ) ;
 int pmap_destroy_internal (TYPE_1__*) ;

void
pmap_destroy(
 pmap_t pmap)
{
 ledger_t ledger;

 PMAP_TRACE(1, PMAP_CODE(PMAP__DESTROY) | DBG_FUNC_START, VM_KERNEL_ADDRHIDE(pmap), pmap->vasid, pmap->asid);

 ledger = pmap->ledger;

 pmap_destroy_internal(pmap);

 ledger_dereference(ledger);

 PMAP_TRACE(1, PMAP_CODE(PMAP__DESTROY) | DBG_FUNC_END);
}
