
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;
typedef int pmap_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE_CONSTANT (int,...) ;
 int PMAP__SWITCH ;
 int VM_KERNEL_ADDRHIDE (int ) ;
 int cpu_number () ;
 int current_thread () ;
 int set_dirbase (int ,int ,int ) ;
 int splhigh () ;
 int splx (int ) ;

void
pmap_switch(pmap_t tpmap)
{
        spl_t s;

 PMAP_TRACE_CONSTANT(PMAP_CODE(PMAP__SWITCH) | DBG_FUNC_START, VM_KERNEL_ADDRHIDE(tpmap));
 s = splhigh();
 set_dirbase(tpmap, current_thread(), cpu_number());
 splx(s);
 PMAP_TRACE_CONSTANT(PMAP_CODE(PMAP__SWITCH) | DBG_FUNC_END);
}
