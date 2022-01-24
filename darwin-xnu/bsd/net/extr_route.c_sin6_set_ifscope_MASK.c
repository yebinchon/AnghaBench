#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_2__ {unsigned int sin6_scope_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr*) ; 
 TYPE_1__* FUNC1 (struct sockaddr*) ; 

__attribute__((used)) static inline void
FUNC2(struct sockaddr *sa, unsigned int ifscope)
{
	/* Caller must pass in sockaddr_in6 */
	FUNC0(sa);

	FUNC1(sa)->sin6_scope_id = ifscope;
}