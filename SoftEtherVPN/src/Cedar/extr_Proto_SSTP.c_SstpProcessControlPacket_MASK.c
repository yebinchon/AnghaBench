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
struct TYPE_16__ {int DataSize; int /*<<< orphan*/  Data; } ;
struct TYPE_15__ {int IsControl; int MessageType; int /*<<< orphan*/  AttributeList; } ;
struct TYPE_14__ {int Aborting; int Disconnecting; int DisconnectRecved; int AbortReceived; int /*<<< orphan*/  Status; int /*<<< orphan*/  EstablishedCount; int /*<<< orphan*/  SentNonce; } ;
typedef  TYPE_1__ SSTP_SERVER ;
typedef  TYPE_2__ SSTP_PACKET ;
typedef  TYPE_3__ SSTP_ATTRIBUTE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTRIB_STATUS_VALUE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  CERT_HASH_PROTOCOL_SHA256 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID ; 
 int /*<<< orphan*/  SSTP_ENCAPSULATED_PROTOCOL_PPP ; 
#define  SSTP_MSG_CALL_ABORT 132 
#define  SSTP_MSG_CALL_CONNECTED 131 
 int /*<<< orphan*/  SSTP_MSG_CALL_CONNECT_ACK ; 
 int /*<<< orphan*/  SSTP_MSG_CALL_CONNECT_NAK ; 
#define  SSTP_MSG_CALL_CONNECT_REQUEST 130 
#define  SSTP_MSG_CALL_DISCONNECT 129 
#define  SSTP_MSG_CALL_DISCONNECT_ACK 128 
 int /*<<< orphan*/  SSTP_NONCE_SIZE ; 
 int /*<<< orphan*/  SSTP_SERVER_STATUS_CONNECTED_PENDING ; 
 int /*<<< orphan*/  SSTP_SERVER_STATUS_ESTABLISHED ; 
 int /*<<< orphan*/  SSTP_SERVER_STATUS_REQUEST_PENGING ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 

void FUNC12(SSTP_SERVER *s, SSTP_PACKET *p)
{
	// Validate arguments
	if (s == NULL || p == NULL || p->IsControl == false)
	{
		return;
	}

	FUNC0("SSTP Control Packet Recv: Msg = %u, Num = %u\n", p->MessageType, FUNC1(p->AttributeList));

	switch (p->MessageType)
	{
	case SSTP_MSG_CALL_CONNECT_REQUEST:		// Receive a connection request from a client
		if (s->Aborting == false && s->Disconnecting == false)
		{
			if (s->Status == SSTP_SERVER_STATUS_REQUEST_PENGING)
			{
				SSTP_ATTRIBUTE *protocol_id = FUNC6(p, SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID);
				if (protocol_id != NULL && protocol_id->DataSize == 2 &&
					FUNC2(protocol_id->Data) == SSTP_ENCAPSULATED_PROTOCOL_PPP)
				{
					// Accept the connection request by the PPP protocol
					SSTP_PACKET *ret;

					// Generation of random numbers
					FUNC3(s->SentNonce, SSTP_NONCE_SIZE);

					ret = FUNC8(SSTP_MSG_CALL_CONNECT_ACK,
						FUNC9(CERT_HASH_PROTOCOL_SHA256, s->SentNonce));

					FUNC11(s, ret);

					FUNC7(ret);

					s->Status = SSTP_SERVER_STATUS_CONNECTED_PENDING;

					s->EstablishedCount++;
				}
				else
				{
					// Refuse to accept for a connection request other than the PPP protocol
					SSTP_PACKET *ret = FUNC8(SSTP_MSG_CALL_CONNECT_NAK,
						FUNC10(SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID, ATTRIB_STATUS_VALUE_NOT_SUPPORTED));

					FUNC11(s, ret);

					FUNC7(ret);
				}
			}
		}
		break;

	case SSTP_MSG_CALL_CONNECTED:			// Connection from the client complete
		if (s->Aborting == false && s->Disconnecting == false)
		{
			if (s->Status == SSTP_SERVER_STATUS_CONNECTED_PENDING)
			{
				s->Status = SSTP_SERVER_STATUS_ESTABLISHED;

				FUNC0("SSTP Connected.\n");
			}
		}
		break;

	case SSTP_MSG_CALL_DISCONNECT:			// Receive a disconnect request from the client
	case SSTP_MSG_CALL_DISCONNECT_ACK:
		s->DisconnectRecved = true;
		FUNC5(s);
		break;

	case SSTP_MSG_CALL_ABORT:				// Receive a disconnect request from the client
		s->AbortReceived = true;
		FUNC4(s);
		break;
	}
}