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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ init_flags ; 
 scalar_t__ initialized ; 

void FUNC5(void)
{
  if(!initialized)
    return;

  if(--initialized)
    return;

  FUNC3();
  FUNC1();

#ifdef WIN32
  Curl_win32_cleanup(init_flags);
#endif

  FUNC0();

  FUNC2();

  init_flags  = 0;
}