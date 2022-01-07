
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int PE_parse_boot_argn_internal (char const*,char*,int,int ) ;
 int TRUE ;

boolean_t
PE_parse_boot_arg_str(
 const char *arg_string,
 char *arg_ptr,
 int strlen)
{
 return PE_parse_boot_argn_internal(arg_string, arg_ptr, strlen, TRUE);
}
