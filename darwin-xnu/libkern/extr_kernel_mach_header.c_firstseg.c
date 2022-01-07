
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kernel_segment_command_t ;


 int _mh_execute_header ;
 int * firstsegfromheader (int *) ;

kernel_segment_command_t *
firstseg(void)
{
    return firstsegfromheader(&_mh_execute_header);
}
