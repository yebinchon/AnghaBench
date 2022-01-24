#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * subject_name; int /*<<< orphan*/ * issuer_name; } ;
typedef  TYPE_1__ X ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(X *x)
{
	// Validate arguments
	if (x == NULL)
	{
		return;
	}

	FUNC0(x->issuer_name);
	x->issuer_name = NULL;

	FUNC0(x->subject_name);
	x->subject_name = NULL;
}