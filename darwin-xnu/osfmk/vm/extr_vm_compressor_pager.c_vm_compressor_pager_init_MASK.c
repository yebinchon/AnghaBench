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
struct compressor_pager {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  compressor_pager_lck_attr ; 
 int /*<<< orphan*/  compressor_pager_lck_grp ; 
 int /*<<< orphan*/  compressor_pager_lck_grp_attr ; 
 int /*<<< orphan*/  compressor_pager_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
	FUNC1(&compressor_pager_lck_grp_attr);
	FUNC2(&compressor_pager_lck_grp, "compressor_pager", &compressor_pager_lck_grp_attr);
	FUNC0(&compressor_pager_lck_attr);

	compressor_pager_zone = FUNC4(sizeof (struct compressor_pager),
				      10000 * sizeof (struct compressor_pager),
				      8192, "compressor_pager");
	FUNC5(compressor_pager_zone, Z_CALLERACCT, FALSE);
	FUNC5(compressor_pager_zone, Z_NOENCRYPT, TRUE);

	FUNC3();
}