
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KBI ;
 int KBIBack ;
 int KBIBackRM ;
 int KBIRM ;
 int _go32_dpmi_free_iret_wrapper (int *) ;
 int _go32_dpmi_free_real_mode_callback (int *) ;
 int _go32_dpmi_set_protected_mode_interrupt_vector (int,int *) ;
 int _go32_dpmi_set_real_mode_interrupt_vector (int,int *) ;
 scalar_t__ initdone ;

void KillKeyboard(void)
{
 if(initdone)
 {
  _go32_dpmi_set_protected_mode_interrupt_vector(9,&KBIBack);
  _go32_dpmi_free_iret_wrapper(&KBI);

  _go32_dpmi_set_real_mode_interrupt_vector(9,&KBIBackRM);
  _go32_dpmi_free_real_mode_callback(&KBIRM);
  initdone=0;
 }
}
