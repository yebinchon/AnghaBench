#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
struct TYPE_7__ {int /*<<< orphan*/  ProtocolId; int /*<<< orphan*/  Port; int /*<<< orphan*/  IdType; } ;
struct TYPE_6__ {int /*<<< orphan*/  IdData; int /*<<< orphan*/  ProtocolId; int /*<<< orphan*/  Port; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ IKE_PACKET_ID_PAYLOAD ;
typedef  TYPE_2__ IKE_ID_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

BUF *FUNC5(IKE_PACKET_ID_PAYLOAD *t)
{
	IKE_ID_HEADER h;
	BUF *ret;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC4(&h, sizeof(h));
	h.IdType = t->Type;
	h.Port = FUNC0(t->Port);
	h.ProtocolId = t->ProtocolId;

	ret = FUNC1();
	FUNC2(ret, &h, sizeof(h));

	FUNC3(ret, t->IdData);

	return ret;
}