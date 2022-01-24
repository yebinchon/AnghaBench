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
typedef  int /*<<< orphan*/  USHORT ;
typedef  int UINT ;
struct TYPE_5__ {int num_item; } ;
struct TYPE_4__ {void* RawIpYourMacAddr; void* RawIpMyMacAddr; TYPE_2__* RawIpSendQueue; } ;
typedef  TYPE_1__ ETH ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(ETH *e, void *data, UINT size, USHORT protocol)
{
	BUF *b;
	if (e == NULL || data == NULL || size == 0)
	{
		return;
	}

	if (e->RawIpSendQueue->num_item >= 1024)
	{
		return;
	}

	b = FUNC1();
	FUNC3(b, e->RawIpYourMacAddr, 6);
	FUNC3(b, e->RawIpMyMacAddr, 6);
	FUNC4(b, protocol);
	FUNC3(b, data, size);
	FUNC2(b);

	FUNC0(e->RawIpSendQueue, b);
}