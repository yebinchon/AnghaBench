
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int PE_parse_boot_argn_internal (char const*,void*,int,int ) ;

boolean_t
PE_parse_boot_argn(
 const char *arg_string,
 void *arg_ptr,
 int max_len)
{
 return PE_parse_boot_argn_internal(arg_string, arg_ptr, max_len, FALSE);
}
