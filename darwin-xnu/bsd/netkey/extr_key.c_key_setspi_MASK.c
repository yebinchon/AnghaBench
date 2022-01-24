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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_2__ {scalar_t__ le_next; scalar_t__ le_prev; } ;
struct secasvar {TYPE_1__ spihash; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct secasvar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct secasvar*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 
 int /*<<< orphan*/ * spihash ; 

__attribute__((used)) static void
FUNC4(
		   struct secasvar *sav,
		   u_int32_t spi)
{
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	sav->spi = spi;
	if (sav->spihash.le_prev || sav->spihash.le_next)
		FUNC2(sav, spihash);
	FUNC1(&spihash[FUNC3(spi)], sav, spihash);
}