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
typedef  int /*<<< orphan*/  u_int8_t ;
struct secasindex {int dummy; } ;
struct secashead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 struct secashead* FUNC1 (struct secasindex*) ; 
 struct secashead* FUNC2 (struct secasindex*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 

struct secashead *
FUNC3 (struct secasindex *saidx,
			 u_int8_t           dir)
{
	struct secashead *sah;
	
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	
	sah = FUNC1(saidx);
	if (!sah) {
		return(FUNC2(saidx, NULL, 0, dir));
	}
	return sah;
}