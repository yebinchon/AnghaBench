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
struct mptsub {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mptsub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mptsub_zone ; 
 int /*<<< orphan*/  mptsub_zone_size ; 
 struct mptsub* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mptsub *
FUNC2(void)
{
	struct mptsub *mpts = FUNC1(mptsub_zone);

	if (mpts == NULL)
		return (NULL);

	FUNC0(mpts, mptsub_zone_size);
	return (mpts);
}