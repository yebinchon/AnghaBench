#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  OPENVPN_CHANNEL ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int OPENVPN_CONTROL_PACKET_MAX_DATASIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC6(OPENVPN_CHANNEL *c, UCHAR opcode, UCHAR *data, UINT data_size)
{
	BUF *b;
	// Validate arguments
	if (c == NULL || (data_size != 0 && data == NULL))
	{
		return;
	}

	b = FUNC1();
	FUNC5(b, data, data_size);
	FUNC4(b, 0, 0);

	while (true)
	{
		UCHAR tmp[OPENVPN_CONTROL_PACKET_MAX_DATASIZE];
		UINT size = FUNC3(b, tmp, sizeof(tmp));

		if (size == 0)
		{
			break;
		}

		FUNC2(c, opcode, tmp, size);
		//Debug(" *** CNT SEND %u\n", size);
	}

	FUNC0(b);
}