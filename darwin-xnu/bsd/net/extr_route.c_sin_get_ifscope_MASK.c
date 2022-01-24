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
struct TYPE_2__ {unsigned int sin_scope_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr*) ; 
 TYPE_1__* FUNC1 (struct sockaddr*) ; 

unsigned int
FUNC2(struct sockaddr *sa)
{
	/* Caller must pass in sockaddr_in */
	FUNC0(sa);

	return (FUNC1(sa)->sin_scope_id);
}