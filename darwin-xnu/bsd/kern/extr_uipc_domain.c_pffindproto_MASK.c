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
struct protosw {int dummy; } ;
typedef  int /*<<< orphan*/  domain_guard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct protosw* FUNC2 (int,int,int) ; 

struct protosw *
FUNC3(int family, int protocol, int type)
{
	struct protosw *pp;
	domain_guard_t guard;

	guard = FUNC0();
	pp = FUNC2(family, protocol, type);
	FUNC1(guard);
	return (pp);
}