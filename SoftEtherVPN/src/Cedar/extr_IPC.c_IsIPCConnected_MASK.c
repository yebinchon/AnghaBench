#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* Sock; } ;
struct TYPE_4__ {int /*<<< orphan*/  SendTube; int /*<<< orphan*/  RecvTube; } ;
typedef  TYPE_2__ IPC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(IPC *ipc)
{
	// Validate arguments
	if (ipc == NULL)
	{
		return false;
	}

	if (FUNC0(ipc->Sock->RecvTube) == false || FUNC0(ipc->Sock->SendTube) == false)
	{
		return false;
	}

	return true;
}