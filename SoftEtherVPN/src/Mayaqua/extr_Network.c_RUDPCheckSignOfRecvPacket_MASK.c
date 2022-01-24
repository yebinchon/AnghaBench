#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int UseHMac; TYPE_1__* BulkRecvKey; int /*<<< orphan*/ * Key_Recv; } ;
struct TYPE_7__ {scalar_t__ Protocol; int /*<<< orphan*/  SvcNameHash; } ;
struct TYPE_6__ {int /*<<< orphan*/ * Data; } ;
typedef  TYPE_2__ RUDP_STACK ;
typedef  TYPE_3__ RUDP_SESSION ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ RUDP_PROTOCOL_DNS ; 
 scalar_t__ RUDP_PROTOCOL_ICMP ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bool FUNC5(RUDP_STACK *r, RUDP_SESSION *se, void *recv_data, UINT recv_size)
{
	UCHAR sign[SHA1_SIZE];
	UCHAR sign2[SHA1_SIZE];
	UCHAR *p;
	UINT size;
	// Validate arguments
	if (r == NULL || se == NULL || recv_data == NULL || recv_size == 0)
	{
		return false;
	}

	p = (UCHAR *)recv_data;
	size = recv_size;
	if (size < SHA1_SIZE)
	{
		return false;
	}

	// Verification the signature (segment packet)
	FUNC1(sign, p, SHA1_SIZE);
	FUNC1(p, se->Key_Recv, SHA1_SIZE);
	FUNC3(sign2, p, recv_size);

	if (r->Protocol == RUDP_PROTOCOL_DNS || r->Protocol == RUDP_PROTOCOL_ICMP)
	{
		FUNC4(sign2, sign2, r->SvcNameHash, SHA1_SIZE);
	}

	FUNC1(p, sign, SHA1_SIZE);
	if (FUNC0(sign, sign2, SHA1_SIZE) == 0)
	{
		return true;
	}

	if (se->BulkRecvKey == NULL)
	{
		return false;
	}

	// Verification signature (bulk packet)
	if (se->UseHMac == false)
	{
		FUNC1(sign, p, SHA1_SIZE);
		FUNC1(p, se->BulkRecvKey->Data, SHA1_SIZE);
		FUNC3(sign2, p, recv_size);
		FUNC1(p, sign, SHA1_SIZE);

		if (FUNC0(sign, sign2, SHA1_SIZE) == 0)
		{
			return true;
		}
	}

	FUNC2(sign2, se->BulkRecvKey->Data, SHA1_SIZE, p + SHA1_SIZE, size - SHA1_SIZE);
	if (FUNC0(p, sign2, SHA1_SIZE) == 0)
	{
		se->UseHMac = true;
		return true;
	}

	return false;
}