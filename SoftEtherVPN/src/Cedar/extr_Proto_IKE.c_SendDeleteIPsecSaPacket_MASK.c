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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  int /*<<< orphan*/  IKE_PACKET_PAYLOAD ;
typedef  int /*<<< orphan*/  IKE_CLIENT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  IKE_PROTOCOL_ID_IPSEC_ESP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(IKE_SERVER *ike, IKE_CLIENT *c, UINT spi)
{
	IKE_PACKET_PAYLOAD *payload;
	BUF *buf;
	// Validate arguments
	if (ike == NULL || c == NULL || spi == 0)
	{
		return;
	}

	buf = FUNC1();
	FUNC4(buf, spi);

	payload = FUNC0(IKE_PROTOCOL_ID_IPSEC_ESP, FUNC2(buf));

	FUNC3(ike, c, payload);
}