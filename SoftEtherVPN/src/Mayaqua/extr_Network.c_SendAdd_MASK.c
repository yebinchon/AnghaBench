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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int AsyncMode; int /*<<< orphan*/  SendBuf; } ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__) ; 

void FUNC1(SOCK *sock, void *data, UINT size)
{
	// Validate arguments
	if (sock == NULL || data == NULL || size == 0 || sock->AsyncMode != false)
	{
		return;
	}

	FUNC0(sock->SendBuf, data, size);
}