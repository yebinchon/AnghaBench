
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_5__ {int asid; int vasid; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE (int,int,...) ;
 int PMAP__SWITCH ;
 int VM_KERNEL_ADDRHIDE (TYPE_1__*) ;
 int pmap_switch_internal (TYPE_1__*) ;

void
pmap_switch(
 pmap_t pmap)
{
 PMAP_TRACE(1, PMAP_CODE(PMAP__SWITCH) | DBG_FUNC_START, VM_KERNEL_ADDRHIDE(pmap), pmap->vasid, pmap->asid);
 pmap_switch_internal(pmap);
 PMAP_TRACE(1, PMAP_CODE(PMAP__SWITCH) | DBG_FUNC_END);
}
