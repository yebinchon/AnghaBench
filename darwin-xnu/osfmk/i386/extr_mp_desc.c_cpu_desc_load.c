
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct real_descriptor {int dummy; } ;
struct TYPE_12__ {scalar_t__ size; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {scalar_t__ size; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_13__ {TYPE_4__ cdi_idtu; TYPE_3__ cdi_gdtu; TYPE_2__ cdi_idtb; TYPE_1__ cdi_gdtb; } ;
typedef TYPE_5__ cpu_desc_index_t ;
struct TYPE_14__ {scalar_t__ cpu_number; TYPE_5__ cpu_desc_index; } ;
typedef TYPE_6__ cpu_data_t ;
struct TYPE_15__ {int access; } ;


 int ACC_TSS_BUSY ;
 int CPU_DESC_LOAD_ENTRY ;
 int CPU_DESC_LOAD_EXIT ;
 int CPU_DESC_LOAD_GDT ;
 int CPU_DESC_LOAD_GS_BASE ;
 int CPU_DESC_LOAD_IDT ;
 int CPU_DESC_LOAD_KERNEL_GS_BASE ;
 int CPU_DESC_LOAD_LDT ;
 int CPU_DESC_LOAD_TSS ;
 int GDTSZ ;
 int KERNEL_LDT ;
 int KERNEL_TSS ;
 int MSR_IA32_GS_BASE ;
 int MSR_IA32_KERNEL_GS_BASE ;
 TYPE_7__* gdt_desc_p (int ) ;
 int lgdt (uintptr_t*) ;
 int lidt (uintptr_t*) ;
 int lldt (int ) ;
 int postcode (int ) ;
 int set_tr (int ) ;
 int wrmsr64 (int ,uintptr_t) ;

void
cpu_desc_load(cpu_data_t *cdp)
{
 cpu_desc_index_t *cdi = &cdp->cpu_desc_index;

 postcode(CPU_DESC_LOAD_ENTRY);


 postcode(CPU_DESC_LOAD_GS_BASE);
 wrmsr64(MSR_IA32_GS_BASE, (uintptr_t) cdp);
 postcode(CPU_DESC_LOAD_KERNEL_GS_BASE);
 wrmsr64(MSR_IA32_KERNEL_GS_BASE, (uintptr_t) cdp);






 gdt_desc_p(KERNEL_TSS)->access &= ~ACC_TSS_BUSY;


 cdi->cdi_gdtb.size = sizeof(struct real_descriptor)*GDTSZ - 1;
 cdi->cdi_gdtu.size = cdi->cdi_gdtb.size;
 cdi->cdi_idtb.size = 0x1000 + cdp->cpu_number;
 cdi->cdi_idtu.size = cdi->cdi_idtb.size;

 postcode(CPU_DESC_LOAD_GDT);
 lgdt((uintptr_t *) &cdi->cdi_gdtu);
 postcode(CPU_DESC_LOAD_IDT);
 lidt((uintptr_t *) &cdi->cdi_idtu);
 postcode(CPU_DESC_LOAD_LDT);
 lldt(KERNEL_LDT);
 postcode(CPU_DESC_LOAD_TSS);
 set_tr(KERNEL_TSS);




 postcode(CPU_DESC_LOAD_EXIT);
}
