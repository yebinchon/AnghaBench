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
struct llinfo_nd6 {int dummy; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct llinfo_nd6*,int) ; 
 int /*<<< orphan*/  llinfo_nd6_zone ; 
 struct llinfo_nd6* FUNC1 (int /*<<< orphan*/ ) ; 
 struct llinfo_nd6* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct llinfo_nd6 *
FUNC3(int how)
{
	struct llinfo_nd6 *ln;

	ln = (how == M_WAITOK) ? FUNC1(llinfo_nd6_zone) :
	    FUNC2(llinfo_nd6_zone);
	if (ln != NULL)
		FUNC0(ln, sizeof (*ln));

	return (ln);
}