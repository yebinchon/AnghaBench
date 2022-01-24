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
typedef  int /*<<< orphan*/  mk_timer_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * mk_timer_zone ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
	int			s = sizeof (mk_timer_data_t);

	FUNC0(!(mk_timer_zone != NULL));

	mk_timer_zone = FUNC1(s, (4096 * s), (16 * s), "mk_timer");

	FUNC2(mk_timer_zone, Z_NOENCRYPT, TRUE);
}