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
struct TYPE_3__ {int /*<<< orphan*/  SecureNATOption; scalar_t__ EnableSecureNAT; } ;
typedef  TYPE_1__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(HUB *h, FOLDER *f)
{
	// Validate arguments
	if (h == NULL || f == NULL)
	{
		return;
	}

	FUNC0(f, "Disabled", h->EnableSecureNAT ? false : true);

	FUNC1(h->SecureNATOption, f);
}