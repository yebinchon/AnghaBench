
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _REENT ;
 int __sys_state_get () ;
 int __sys_state_up (int ) ;
 int _wrapup_reent (int *) ;
 int libc_globl_reent ;

void __libc_wrapup()
{
 if(!__sys_state_up(__sys_state_get())) return;
 if(_REENT!=&libc_globl_reent) {
  _wrapup_reent(&libc_globl_reent);
  _REENT = &libc_globl_reent;
 }
}
