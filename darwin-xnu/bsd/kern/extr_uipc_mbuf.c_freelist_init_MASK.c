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
typedef  scalar_t__ mbuf_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ MC_BIGCL ; 
 scalar_t__ MC_CL ; 
 int /*<<< orphan*/  M_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  mbuf_mlock ; 

__attribute__((used)) static void
FUNC5(mbuf_class_t class)
{
	FUNC0(mbuf_mlock, LCK_MTX_ASSERT_OWNED);

	FUNC1(class == MC_CL || class == MC_BIGCL);
	FUNC1(FUNC4(class) == 0);
	FUNC1(FUNC3(class) > 0);

	while (FUNC4(class) < FUNC3(class))
		(void) FUNC2(class, FUNC3(class), M_WAIT);

	FUNC1(FUNC4(class) >= FUNC3(class));
}