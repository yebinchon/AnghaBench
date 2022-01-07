
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_error_t ;
typedef int boolean_t ;


 char* mach_error_string_int (int ,int *) ;

char *
mach_error_string(mach_error_t err)
{
 boolean_t diag;

 return mach_error_string_int( err, &diag );
}
