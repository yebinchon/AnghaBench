#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
typedef  scalar_t__ USHORT ;
typedef  int UINT ;
struct TYPE_16__ {int Size; TYPE_2__* Buf; } ;
struct TYPE_15__ {int /*<<< orphan*/  PayloadSize; int /*<<< orphan*/  NextPayload; } ;
struct TYPE_14__ {int /*<<< orphan*/  PayloadType; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IKE_PACKET_PAYLOAD ;
typedef  TYPE_2__ IKE_COMMON_HEADER ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  IKE_PAYLOAD_NONE ; 
 TYPE_3__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

BUF *FUNC9(LIST *o)
{
	BUF *b;
	UINT i;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	b = FUNC5();

	for (i = 0;i < FUNC4(o);i++)
	{
		IKE_PACKET_PAYLOAD *p = FUNC3(o, i);
		IKE_PACKET_PAYLOAD *next = NULL;
		IKE_COMMON_HEADER h;
		BUF *tmp;

		if (i < (FUNC4(o) - 1))
		{
			next = FUNC3(o, i + 1);
		}

		FUNC8(&h, sizeof(h));
		if (next != NULL)
		{
			h.NextPayload = next->PayloadType;
		}
		else
		{
			h.NextPayload = IKE_PAYLOAD_NONE;
		}

		tmp = FUNC2(p);
		if (tmp != NULL)
		{
			h.PayloadSize = FUNC0(tmp->Size + (USHORT)sizeof(h));

			FUNC7(b, &h, sizeof(h));
			FUNC7(b, tmp->Buf, tmp->Size);

			FUNC1(tmp);
		}
	}

	FUNC6(b, 0, 0);

	return b;
}