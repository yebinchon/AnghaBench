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
struct TYPE_3__ {int /*<<< orphan*/  x509; void* notAfter; void* notBefore; } ;
typedef  TYPE_1__ X ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(X *x)
{
	// Validate arguments
	if (x == NULL)
	{
		return;
	}

	x->notBefore = FUNC0((ASN1_TIME *)FUNC2(x->x509));
	x->notAfter = FUNC0((ASN1_TIME *)FUNC1(x->x509));
}