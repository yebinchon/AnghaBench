
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _go32_dpmi_set_protected_mode_interrupt_vector (int,int *) ;
 int old_key_handler ;

void key_done(void)
{
 _go32_dpmi_set_protected_mode_interrupt_vector(0x9, &old_key_handler);
}
