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
 int /*<<< orphan*/  LC_NUMERIC ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 

int FUNC11(char *URL)
{
  int errors = 0;
  (void)URL; /* not used */

#ifdef HAVE_SETLOCALE
  /*
   * The test makes assumptions about the numeric locale (specifically,
   * RADIXCHAR) so set it to a known working (and portable) one.
   */
  setlocale(LC_NUMERIC, "C");
#endif

  errors += FUNC10();

  errors += FUNC9();

  errors += FUNC5();

  errors += FUNC7();

  errors += FUNC3();

  errors += FUNC8();

  errors += FUNC4();

  errors += FUNC1();

  errors += FUNC6();

  errors += FUNC2();

  if(errors)
    return TEST_ERR_MAJOR_BAD;
  else
    return 0;
}