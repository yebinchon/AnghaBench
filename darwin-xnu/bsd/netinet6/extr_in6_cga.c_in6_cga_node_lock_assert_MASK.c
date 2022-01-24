#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cga_mutex; int /*<<< orphan*/  cga_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ in6_cga ; 

__attribute__((used)) static void
FUNC2(int owned)
{
#if !MACH_ASSERT
#pragma unused(owned)
#endif
	FUNC1(in6_cga.cga_initialized);
	FUNC0(&in6_cga.cga_mutex, owned);
}