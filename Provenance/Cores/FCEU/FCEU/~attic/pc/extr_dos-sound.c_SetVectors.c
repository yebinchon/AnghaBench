
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pm_offset; int pm_selector; } ;
struct TYPE_7__ {int pm_offset; int pm_selector; } ;


 int IVector ;
 TYPE_2__ SBIH ;
 int SBIHOld ;
 TYPE_1__ SBIHRM ;
 int SBIHRMOld ;
 int SBIHRMRegs ;
 scalar_t__ SBIRQHandler ;
 int _go32_dpmi_allocate_iret_wrapper (TYPE_2__*) ;
 int _go32_dpmi_allocate_real_mode_callback_iret (TYPE_1__*,int *) ;
 int _go32_dpmi_get_protected_mode_interrupt_vector (int ,int *) ;
 int _go32_dpmi_get_real_mode_interrupt_vector (int ,int *) ;
 int _go32_dpmi_set_protected_mode_interrupt_vector (int ,TYPE_2__*) ;
 int _go32_dpmi_set_real_mode_interrupt_vector (int ,TYPE_1__*) ;
 int _my_cs () ;

__attribute__((used)) static int SetVectors(void)
{
 SBIH.pm_offset=SBIHRM.pm_offset=(int)SBIRQHandler;
 SBIH.pm_selector=SBIHRM.pm_selector=_my_cs();


 _go32_dpmi_get_real_mode_interrupt_vector(IVector,&SBIHRMOld);
 _go32_dpmi_allocate_real_mode_callback_iret(&SBIHRM, &SBIHRMRegs);
 _go32_dpmi_set_real_mode_interrupt_vector(IVector,&SBIHRM);


 _go32_dpmi_get_protected_mode_interrupt_vector(IVector,&SBIHOld);
 _go32_dpmi_allocate_iret_wrapper(&SBIH);
 _go32_dpmi_set_protected_mode_interrupt_vector(IVector,&SBIH);

 return(1);
}
