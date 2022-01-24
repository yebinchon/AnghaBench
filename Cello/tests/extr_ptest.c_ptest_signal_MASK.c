#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT ; 
 int /*<<< orphan*/  RED ; 
#define  SIGFPE 130 
#define  SIGILL 129 
#define  SIGSEGV 128 
 char* assert_err ; 
 int /*<<< orphan*/  assert_err_buff ; 
 int assert_err_num ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ test_passing ; 

__attribute__((used)) static void FUNC7(int sig) {

  test_passing = 0;
  
  switch( sig ) {
    case SIGFPE:  FUNC5(assert_err_buff,
      "        %i. Division by Zero\n", assert_err_num+1);
    break;
    case SIGILL:  FUNC5(assert_err_buff,
      "        %i. Illegal Instruction\n", assert_err_num+1);
    break;
    case SIGSEGV: FUNC5(assert_err_buff,
      "        %i. Segmentation Fault\n", assert_err_num+1);
    break;
  }
  
  assert_err_num++;
  FUNC6(assert_err, assert_err_buff);
  
  FUNC3(RED); 
  FUNC2("Failed! \n\n%s\n", assert_err);
  FUNC3(DEFAULT);
  
  FUNC4("    | Stopping Execution.");
  FUNC1(stdout);
  FUNC0(0);
  
}