
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_exception_data_type_t ;
typedef int kern_return_t ;


 int EXCEPTION_CODE_MAX ;
 int bsd_exception (int,int*,int) ;

kern_return_t
do_bsdexception(
     int exc,
     int code,
     int sub)
{
 mach_exception_data_type_t codes[EXCEPTION_CODE_MAX];

 codes[0] = code;
 codes[1] = sub;
 return(bsd_exception(exc, codes, 2));
}
