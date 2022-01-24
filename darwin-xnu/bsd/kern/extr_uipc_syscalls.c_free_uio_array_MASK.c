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
typedef  size_t u_int ;
struct uio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uio*) ; 

void
FUNC1(struct uio **uiop, u_int count)
{
	u_int i;

	for (i = 0; i < count; i++) {
		if (uiop[i] != NULL)
			FUNC0(uiop[i]);
	}
}