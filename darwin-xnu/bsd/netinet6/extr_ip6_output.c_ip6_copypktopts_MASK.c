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
struct ip6_pktopts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip6_pktopts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IP6OPT ; 
 struct ip6_pktopts* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ip6_pktopts*,struct ip6_pktopts*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_pktopts*) ; 

struct ip6_pktopts *
FUNC4(struct ip6_pktopts *src, int canwait)
{
	int error;
	struct ip6_pktopts *dst;

	dst = FUNC1(sizeof (*dst), M_IP6OPT, canwait);
	if (dst == NULL)
		return (NULL);
	FUNC3(dst);

	if ((error = FUNC2(dst, src, canwait)) != 0) {
		FUNC0(dst, M_IP6OPT);
		return (NULL);
	}

	return (dst);
}