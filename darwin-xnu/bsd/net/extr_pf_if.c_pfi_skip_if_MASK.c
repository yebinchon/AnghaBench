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
struct pfi_kif {char* pfik_name; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

int
FUNC3(const char *filter, struct pfi_kif *p)
{
	int	n;

	if (filter == NULL || !*filter)
		return (0);
	if (FUNC0(p->pfik_name, filter) == 0)
		return (0);	/* exact match */
	n = FUNC1(filter);
	if (n < 1 || n >= IFNAMSIZ)
		return (1);	/* sanity check */
	if (filter[n-1] >= '0' && filter[n-1] <= '9')
		return (1);	/* only do exact match in that case */
	if (FUNC2(p->pfik_name, filter, n))
		return (1);	/* prefix doesn't match */
	return (p->pfik_name[n] < '0' || p->pfik_name[n] > '9');
}