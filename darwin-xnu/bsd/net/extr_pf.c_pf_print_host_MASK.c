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
typedef  scalar_t__ u_int16_t ;
struct pf_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sa_family_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(struct pf_addr *addr, u_int16_t p, sa_family_t af)
{
	FUNC1(addr, af);
	if (p)
		FUNC2("[%u]", FUNC0(p));
}