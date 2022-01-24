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
struct TYPE_3__ {int /*<<< orphan*/ * PayloadList; } ;
typedef  TYPE_1__ IKE_PACKET_SA_PAYLOAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(IKE_PACKET_SA_PAYLOAD *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	if (t->PayloadList != NULL)
	{
		FUNC0(t->PayloadList);
		t->PayloadList = NULL;
	}
}