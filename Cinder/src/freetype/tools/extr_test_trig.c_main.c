
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error ;
 int printf (char*) ;
 int test_atan2 () ;
 int test_cos () ;
 int test_length () ;
 int test_rotate () ;
 int test_sin () ;
 int test_tan () ;
 int test_unit () ;

int main( void )
  {
    test_cos();
    test_sin();
    test_tan();
    test_atan2();
    test_unit();
    test_length();
    test_rotate();

    if (!error)
      printf( "trigonometry test ok !\n" );

    return !error;
  }
