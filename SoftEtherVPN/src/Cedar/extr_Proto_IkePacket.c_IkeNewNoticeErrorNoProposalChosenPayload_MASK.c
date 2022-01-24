#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  IKE_PACKET_PAYLOAD ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IKE_NOTICE_ERROR_NO_PROPOSAL_CHOSEN ; 
 int /*<<< orphan*/  IKE_PROTOCOL_ID_IKE ; 
 int /*<<< orphan*/  IKE_PROTOCOL_ID_IPSEC_ESP ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

IKE_PACKET_PAYLOAD *FUNC4(bool quick_mode, UINT64 init_cookie, UINT64 resp_cookie)
{
	BUF *b = FUNC2();
	IKE_PACKET_PAYLOAD *ret;

	FUNC3(b, init_cookie);
	FUNC3(b, resp_cookie);

	ret = FUNC1((quick_mode ? IKE_PROTOCOL_ID_IPSEC_ESP : IKE_PROTOCOL_ID_IKE),
		IKE_NOTICE_ERROR_NO_PROPOSAL_CHOSEN, b->Buf, b->Size,
		NULL, 0);

	FUNC0(b);

	return ret;
}