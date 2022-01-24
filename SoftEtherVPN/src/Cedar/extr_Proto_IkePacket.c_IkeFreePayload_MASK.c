#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  GeneralData; int /*<<< orphan*/  Delete; int /*<<< orphan*/  Notice; int /*<<< orphan*/  CertRequest; int /*<<< orphan*/  Cert; int /*<<< orphan*/  Id; int /*<<< orphan*/  Transform; int /*<<< orphan*/  Proposal; int /*<<< orphan*/  Sa; } ;
struct TYPE_6__ {int PayloadType; int /*<<< orphan*/ * BitArray; TYPE_1__ Payload; } ;
typedef  TYPE_2__ IKE_PACKET_PAYLOAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  IKE_PAYLOAD_CERT 145 
#define  IKE_PAYLOAD_CERT_REQUEST 144 
#define  IKE_PAYLOAD_DELETE 143 
#define  IKE_PAYLOAD_HASH 142 
#define  IKE_PAYLOAD_ID 141 
#define  IKE_PAYLOAD_KEY_EXCHANGE 140 
#define  IKE_PAYLOAD_NAT_D 139 
#define  IKE_PAYLOAD_NAT_D_DRAFT 138 
#define  IKE_PAYLOAD_NAT_OA 137 
#define  IKE_PAYLOAD_NAT_OA_DRAFT 136 
#define  IKE_PAYLOAD_NAT_OA_DRAFT_2 135 
#define  IKE_PAYLOAD_NOTICE 134 
#define  IKE_PAYLOAD_PROPOSAL 133 
#define  IKE_PAYLOAD_RAND 132 
#define  IKE_PAYLOAD_SA 131 
#define  IKE_PAYLOAD_SIGN 130 
#define  IKE_PAYLOAD_TRANSFORM 129 
#define  IKE_PAYLOAD_VENDOR_ID 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(IKE_PACKET_PAYLOAD *p)
{
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	switch (p->PayloadType)
	{
	case IKE_PAYLOAD_SA:					// SA payload
		FUNC9(&p->Payload.Sa);
		break;

	case IKE_PAYLOAD_PROPOSAL:			// Proposal payload
		FUNC8(&p->Payload.Proposal);
		break;

	case IKE_PAYLOAD_TRANSFORM:			// Proposal payload
		FUNC10(&p->Payload.Transform);
		break;

	case IKE_PAYLOAD_ID:					// ID payload
		FUNC6(&p->Payload.Id);
		break;

	case IKE_PAYLOAD_CERT:				// Certificate payload
		FUNC2(&p->Payload.Cert);
		break;

	case IKE_PAYLOAD_CERT_REQUEST:		// Certificate request payload
		FUNC3(&p->Payload.CertRequest);
		break;

	case IKE_PAYLOAD_NOTICE:				// Notification Payload
		FUNC7(&p->Payload.Notice);
		break;

	case IKE_PAYLOAD_DELETE:				// Deletion payload
		FUNC5(&p->Payload.Delete);
		break;

	case IKE_PAYLOAD_NAT_OA:				// NAT-OD payload
	case IKE_PAYLOAD_NAT_OA_DRAFT:
	case IKE_PAYLOAD_NAT_OA_DRAFT_2:
		// Do Nothing
		break;

	case IKE_PAYLOAD_KEY_EXCHANGE:		// Key exchange payload
	case IKE_PAYLOAD_HASH:				// Hash payload
	case IKE_PAYLOAD_SIGN:				// Signature payload
	case IKE_PAYLOAD_RAND:				// Random number payload
	case IKE_PAYLOAD_VENDOR_ID:			// Vendor ID payload
	case IKE_PAYLOAD_NAT_D:				// NAT-D payload
	case IKE_PAYLOAD_NAT_D_DRAFT:		// NAT-D payload (draft)
	default:
		FUNC4(&p->Payload.GeneralData);
		break;
	}

	if (p->BitArray != NULL)
	{
		FUNC1(p->BitArray);
	}

	FUNC0(p);
}