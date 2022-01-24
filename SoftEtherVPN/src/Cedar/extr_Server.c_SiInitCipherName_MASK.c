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
struct TYPE_3__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_1__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  SERVER_DEFAULT_CIPHER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC0(s->Cedar, SERVER_DEFAULT_CIPHER_NAME);
}