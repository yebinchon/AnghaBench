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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  IKE_PACKET_PAYLOAD ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IKE_NOTICE_DPD_REQUEST ; 
 int /*<<< orphan*/  IKE_NOTICE_DPD_RESPONSE ; 
 int /*<<< orphan*/  IKE_PROTOCOL_ID_IKE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

IKE_PACKET_PAYLOAD *FUNC5(bool ack, UINT64 init_cookie, UINT64 resp_cookie, UINT seq_no)
{
	IKE_PACKET_PAYLOAD *ret;
	BUF *b = FUNC3();

	seq_no = FUNC0(seq_no);

	FUNC4(b, init_cookie);
	FUNC4(b, resp_cookie);

	ret = FUNC2(IKE_PROTOCOL_ID_IKE, (ack ? IKE_NOTICE_DPD_RESPONSE : IKE_NOTICE_DPD_REQUEST),
		b->Buf, b->Size,
		&seq_no, sizeof(UINT));

	FUNC1(b);

	return ret;
}