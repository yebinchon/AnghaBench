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
typedef  size_t u_int8_t ;
struct secasvar {size_t state; TYPE_1__* sah; } ;
struct TYPE_2__ {int /*<<< orphan*/ * savtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct secasvar*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct secasvar*) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 

void
FUNC5(
				struct secasvar *sav,
				u_int8_t state)
{
	
	if (sav == NULL)
		FUNC4("key_sa_chgstate called with sav == NULL");
	
	if (sav->state == state)
		return;
	
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	
	if (FUNC3(sav))
		FUNC2(sav, chain);
	
	sav->state = state;
	FUNC1(&sav->sah->savtree[state], sav, chain);
	
}