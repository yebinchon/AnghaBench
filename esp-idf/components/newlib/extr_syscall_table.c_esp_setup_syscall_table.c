
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _GLOBAL_REENT ;
 int ** environ ;
 int ** malloc (int) ;
 int s_reent ;
 int s_stub_table ;
 int * syscall_table_ptr_app ;
 int * syscall_table_ptr_pro ;

void esp_setup_syscall_table(void)
{
    syscall_table_ptr_pro = &s_stub_table;
    syscall_table_ptr_app = &s_stub_table;
    _GLOBAL_REENT = &s_reent;
    environ = malloc(sizeof(char*));
    environ[0] = ((void*)0);
}
