#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void (* func ) () ;int /*<<< orphan*/  suite; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ test_t ;

/* Variables and functions */
 scalar_t__ MAX_NAME ; 
 int MAX_TESTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int num_tests ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 TYPE_1__* tests ; 

void FUNC4(void (*func)(void), const char* name, const char* suite) {

  test_t test;

  if (num_tests == MAX_TESTS) {
    FUNC1("ERROR: Exceeded maximum test count of %i!\n", 
      MAX_TESTS); FUNC0();
  }
  
  if (FUNC3(name) >= MAX_NAME) {
    FUNC1("ERROR: Test name '%s' too long (Maximum is %i characters)\n", 
      name, MAX_NAME); FUNC0();
  }
  
  if (FUNC3(suite) >= MAX_NAME) {
    FUNC1("ERROR: Test suite '%s' too long (Maximum is %i characters)\n", 
      suite, MAX_NAME); FUNC0();
  }
  
  test.func = func;
  FUNC2(test.name, name);
  FUNC2(test.suite, suite);
  
  tests[num_tests] = test;
  num_tests++;
}