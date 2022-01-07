
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IVector ;
 int SBIH ;
 int SBIHOld ;
 int SBIHRM ;
 int SBIHRMOld ;
 int _go32_dpmi_free_iret_wrapper (int *) ;
 int _go32_dpmi_free_real_mode_callback (int *) ;
 int _go32_dpmi_set_protected_mode_interrupt_vector (int ,int *) ;
 int _go32_dpmi_set_real_mode_interrupt_vector (int ,int *) ;

__attribute__((used)) static void ResetVectors(void)
{
 _go32_dpmi_set_protected_mode_interrupt_vector(IVector,&SBIHOld);
 _go32_dpmi_free_iret_wrapper(&SBIH);
 _go32_dpmi_set_real_mode_interrupt_vector(IVector,&SBIHRMOld);
 _go32_dpmi_free_real_mode_callback(&SBIHRM);
}
