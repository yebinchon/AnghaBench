
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_URI_PARTS_T ;


 scalar_t__ check_accessors (int *) ;
 scalar_t__ check_build_parameters (int *) ;
 scalar_t__ check_get_defaults (int *) ;
 scalar_t__ check_null_uri_pointer () ;
 scalar_t__ check_parse_parameters (int *) ;

__attribute__((used)) static int test_parameter_validation(VC_URI_PARTS_T *uri)
{
   int error_count = 0;

   error_count += check_null_uri_pointer();
   error_count += check_get_defaults(uri);
   error_count += check_parse_parameters(uri);
   error_count += check_build_parameters(uri);
   error_count += check_accessors(uri);

   return error_count;
}
