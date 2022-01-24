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
typedef  int /*<<< orphan*/  u_int32_t ;
struct secasvar {int refcnt; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYDEBUG_IPSEC_STAMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ FUNC2 (struct secasvar*) ; 
 int /*<<< orphan*/  FUNC3 (struct secasvar*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 

void
FUNC9(
			struct secasvar *sav,
			int locked)
{
	
	/* sanity check */
	if (sav == NULL)
		FUNC7("key_freesav: NULL pointer is passed.\n");
	
	if (!locked)
		FUNC4(sadb_mutex);
	else
		FUNC1(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	sav->refcnt--;
	FUNC0(KEYDEBUG_IPSEC_STAMP,
	    FUNC8("DP freesav cause refcnt--:%d SA:0x%llx SPI %u\n",
	    sav->refcnt, (uint64_t)FUNC2(sav),
	    (u_int32_t)FUNC6(sav->spi)));
	
	if (sav->refcnt == 0)
		FUNC3(sav);
	if (!locked)
		FUNC5(sadb_mutex);
	return;
}