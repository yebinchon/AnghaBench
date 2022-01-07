
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* func ) () ;int suite; int name; } ;
typedef TYPE_1__ test_t ;


 scalar_t__ MAX_NAME ;
 int MAX_TESTS ;
 int abort () ;
 int num_tests ;
 int printf (char*,...) ;
 int pt_title_case (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 TYPE_1__* tests ;

void pt_add_test(void (*func)(void), const char* name, const char* suite) {

  test_t test;

  if (num_tests == MAX_TESTS) {
    printf("ERROR: Exceeded maximum test count of %i!\n",
      MAX_TESTS); abort();
  }

  if (strlen(name) >= MAX_NAME) {
    printf("ERROR: Test name '%s' too long (Maximum is %i characters)\n",
      name, MAX_NAME); abort();
  }

  if (strlen(suite) >= MAX_NAME) {
    printf("ERROR: Test suite '%s' too long (Maximum is %i characters)\n",
      suite, MAX_NAME); abort();
  }

  test.func = func;
  pt_title_case(test.name, name);
  pt_title_case(test.suite, suite);

  tests[num_tests] = test;
  num_tests++;
}
