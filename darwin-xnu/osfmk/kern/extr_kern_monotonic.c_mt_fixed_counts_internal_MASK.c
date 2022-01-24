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
typedef  int /*<<< orphan*/  uint64_t ;
struct mt_cpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 struct mt_cpu* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mt_cpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(uint64_t *counts, uint64_t *counts_since)
{
	FUNC0(FUNC1() == FALSE);

	struct mt_cpu *mtc = FUNC2();
	FUNC0(mtc != NULL);

	FUNC3(mtc, counts, counts_since);
}