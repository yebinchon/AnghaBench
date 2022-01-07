
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kernel_segment_command_t ;


 int _mh_execute_header ;
 int * getsegbynamefromheader (int *,char const*) ;

kernel_segment_command_t *
getsegbyname(const char *seg_name)
{
 return(getsegbynamefromheader(&_mh_execute_header, seg_name));
}
