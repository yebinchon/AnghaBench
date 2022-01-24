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
typedef  int /*<<< orphan*/  USHORT ;
typedef  scalar_t__ UINT ;
typedef  void* UCHAR ;
struct TYPE_7__ {void* Type; void* ProtocolId; int /*<<< orphan*/  Port; int /*<<< orphan*/  IdData; } ;
struct TYPE_6__ {TYPE_2__ Id; } ;
struct TYPE_8__ {TYPE_1__ Payload; } ;
typedef  TYPE_3__ IKE_PACKET_PAYLOAD ;

/* Variables and functions */
 int /*<<< orphan*/  IKE_PAYLOAD_ID ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 

IKE_PACKET_PAYLOAD *FUNC2(UCHAR id_type, UCHAR protocol_id, USHORT port, void *id_data, UINT id_size)
{
	IKE_PACKET_PAYLOAD *p;
	if (id_data == NULL && id_size != 0)
	{
		return NULL;
	}

	p = FUNC0(IKE_PAYLOAD_ID);
	p->Payload.Id.IdData = FUNC1(id_data, id_size);
	p->Payload.Id.Port = port;
	p->Payload.Id.ProtocolId = protocol_id;
	p->Payload.Id.Type = id_type;

	return p;
}