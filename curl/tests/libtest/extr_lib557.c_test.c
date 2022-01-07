
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_NUMERIC ;
 int TEST_ERR_MAJOR_BAD ;
 int setlocale (int ,char*) ;
 scalar_t__ test_curl_off_t_formatting () ;
 scalar_t__ test_float_formatting () ;
 scalar_t__ test_signed_int_formatting () ;
 scalar_t__ test_signed_long_formatting () ;
 scalar_t__ test_signed_short_formatting () ;
 scalar_t__ test_string_formatting () ;
 scalar_t__ test_unsigned_int_formatting () ;
 scalar_t__ test_unsigned_long_formatting () ;
 scalar_t__ test_unsigned_short_formatting () ;
 scalar_t__ test_weird_arguments () ;

int test(char *URL)
{
  int errors = 0;
  (void)URL;
  errors += test_weird_arguments();

  errors += test_unsigned_short_formatting();

  errors += test_signed_short_formatting();

  errors += test_unsigned_int_formatting();

  errors += test_signed_int_formatting();

  errors += test_unsigned_long_formatting();

  errors += test_signed_long_formatting();

  errors += test_curl_off_t_formatting();

  errors += test_string_formatting();

  errors += test_float_formatting();

  if(errors)
    return TEST_ERR_MAJOR_BAD;
  else
    return 0;
}
