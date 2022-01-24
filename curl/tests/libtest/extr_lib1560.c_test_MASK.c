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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

int FUNC7(char *URL)
{
  (void)URL; /* not used */

  if(FUNC4())
    return 6;

  if(FUNC0())
    return 5;

  if(FUNC6())
    return 1;

  if(FUNC5())
    return 2;

  if(FUNC2())
    return 3;

  if(FUNC1())
    return 4;

  FUNC3("success\n");
  return 0;
}