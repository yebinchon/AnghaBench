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
struct TYPE_3__ {void* DhcpPendingLeaseList; void* DhcpLeaseList; } ;
typedef  TYPE_1__ VH ;

/* Variables and functions */
 int /*<<< orphan*/  CompareDhcpLeaseList ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(VH *v)
{
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Create a list
	v->DhcpLeaseList = FUNC0(CompareDhcpLeaseList);
	v->DhcpPendingLeaseList = FUNC0(CompareDhcpLeaseList);
}