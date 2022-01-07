
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kernel_section_t ;
typedef int kernel_mach_header_t ;


 int _mh_execute_header ;
 int * getsectbynamefromheader (int *,char const*,char const*) ;

kernel_section_t *
getsectbyname(
    const char *segname,
    const char *sectname)
{
 return(getsectbynamefromheader(
  (kernel_mach_header_t *)&_mh_execute_header, segname, sectname));
}
