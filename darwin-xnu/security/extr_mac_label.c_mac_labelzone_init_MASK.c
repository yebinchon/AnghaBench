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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  Z_EXHAUST ; 
 int /*<<< orphan*/  Z_EXPAND ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zone_label ; 

void
FUNC2(void)
{

	zone_label = FUNC0(sizeof(struct label),
	    8192 * sizeof(struct label),
	    sizeof(struct label), "MAC Labels");
	FUNC1(zone_label, Z_EXPAND, TRUE);
	FUNC1(zone_label, Z_EXHAUST, FALSE);
	FUNC1(zone_label, Z_CALLERACCT, FALSE);
}