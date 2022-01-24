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
struct secashead {int /*<<< orphan*/ * savtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_SECA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 

struct secashead *
FUNC5(void)
{
	struct secashead *p;
	int i;

	FUNC0(sadb_mutex, LCK_MTX_ASSERT_OWNED);

	p = (struct secashead *)FUNC2(sizeof(*p), M_SECA, M_NOWAIT | M_ZERO);
	if (!p) {
		FUNC4(sadb_mutex);
		p = (struct secashead *)FUNC2(sizeof(*p), M_SECA,
		    M_WAITOK | M_ZERO);
		FUNC3(sadb_mutex);
	}
	if (!p) 
		return p;
	for (i = 0; i < sizeof(p->savtree)/sizeof(p->savtree[0]); i++)
		FUNC1(&p->savtree[i]);
	return p;
}