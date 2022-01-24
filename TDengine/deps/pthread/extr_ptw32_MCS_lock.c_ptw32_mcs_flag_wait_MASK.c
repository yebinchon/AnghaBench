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
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_SIZEPTR ;
typedef  scalar_t__ PTW32_INTERLOCKED_SIZE ;
typedef  scalar_t__ PTW32_INTERLOCKED_LONG ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  PTW32_FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void 
FUNC5 (HANDLE * flag)
{
  if ((PTW32_INTERLOCKED_LONG)0 ==
        FUNC3((PTW32_INTERLOCKED_SIZEPTR)flag,
                                            (PTW32_INTERLOCKED_SIZE)0)) /* MBR fence */
    {
      /* the flag is not set. create event. */

      HANDLE e = FUNC1(NULL, PTW32_FALSE, PTW32_FALSE, NULL);

      if ((PTW32_INTERLOCKED_SIZE)0 == FUNC2(
			                  (PTW32_INTERLOCKED_SIZEPTR)flag,
			                  (PTW32_INTERLOCKED_SIZE)e,
			                  (PTW32_INTERLOCKED_SIZE)0))
	{
	  /* stored handle in the flag. wait on it now. */
	  FUNC4(e, INFINITE);
	}

      FUNC0(e);
    }
}