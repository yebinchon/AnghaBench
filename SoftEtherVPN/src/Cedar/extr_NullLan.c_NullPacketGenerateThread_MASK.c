#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  Cancel; int /*<<< orphan*/  PacketQueue; int /*<<< orphan*/  MacAddr; int /*<<< orphan*/  Id; scalar_t__ Halt; int /*<<< orphan*/  Event; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ NULL_LAN ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  null_lan_broadcast_address ; 

void FUNC12(THREAD *t, void *param)
{
	NULL_LAN *n = (NULL_LAN *)param;
	UINT64 end_tick = FUNC9() + (UINT64)(60 * 1000);
	UINT seq = 0;
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	while (true)
	{
		/*if (Tick64() >= end_tick)
		{
			break;
		}*/

		FUNC11(n->Event, FUNC7() % 1500);
		if (n->Halt)
		{
			break;
		}

		FUNC3(n->PacketQueue);
		{
			UCHAR *data;
			BLOCK *b;
			UINT size = FUNC7() % 1500 + 14;
			UCHAR dst_mac[6];

			FUNC6(n->MacAddr, n->Id, seq);

			//NullGenerateMacAddress(dst_mac, n->Id + 1, 0);
			//StrToMac(dst_mac, "00-1B-21-A9-47-E6");
			FUNC8(dst_mac, "00-AC-7A-EF-83-FD");

			data = FUNC4(size);
			FUNC1(data, null_lan_broadcast_address, 6);
			//Copy(data, dst_mac, 6);
			FUNC1(data + 6, n->MacAddr, 6);
			b = FUNC5(data, size, 0);
			FUNC2(n->PacketQueue, b);
		}
		FUNC10(n->PacketQueue);
		FUNC0(n->Cancel);

		//seq++;
	}
}