
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pm_offset; int pm_selector; } ;


 int _go32_dpmi_allocate_iret_wrapper (TYPE_1__*) ;
 int _go32_dpmi_get_protected_mode_interrupt_vector (int,int *) ;
 int _go32_dpmi_set_protected_mode_interrupt_vector (int,TYPE_1__*) ;
 int _go32_my_cs () ;
 scalar_t__ hi ;
 scalar_t__ key_handler ;
 scalar_t__ lo ;
 TYPE_1__ new_key_handler ;
 int old_key_handler ;

void key_init(void)
{
        lo=hi=0;
 new_key_handler.pm_offset = (int) key_handler;
 new_key_handler.pm_selector = _go32_my_cs();
 _go32_dpmi_get_protected_mode_interrupt_vector(0x9, &old_key_handler);
 _go32_dpmi_allocate_iret_wrapper(&new_key_handler);
 _go32_dpmi_set_protected_mode_interrupt_vector(0x9, &new_key_handler);
}
