#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * s6_addr16; } ;
struct TYPE_3__ {TYPE_2__ sin6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static inline void
FUNC5(struct sockaddr *sa, unsigned int ifscope)
{
	/* Caller must pass in sockaddr_in6 */
	FUNC0(sa);
	FUNC3(FUNC1(&(FUNC2(sa)->sin6_addr)));

	FUNC2(sa)->sin6_addr.s6_addr16[1] = FUNC4(ifscope);
}