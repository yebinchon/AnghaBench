#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  void UCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  Size; } ;
struct TYPE_13__ {int Size; void* Buf; } ;
struct TYPE_12__ {int Flag; int /*<<< orphan*/  NextPayload; int /*<<< orphan*/  MessageSize; int /*<<< orphan*/  MessageId; int /*<<< orphan*/  ExchangeType; int /*<<< orphan*/  ResponderCookie; int /*<<< orphan*/  InitiatorCookie; } ;
struct TYPE_11__ {int MessageSize; int FlagEncrypted; int FlagCommit; int FlagAuthOnly; int MessageId; TYPE_9__* DecryptedPayload; int /*<<< orphan*/  PayloadList; int /*<<< orphan*/  ExchangeType; void* ResponderCookie; void* InitiatorCookie; } ;
typedef  TYPE_1__ IKE_PACKET ;
typedef  TYPE_2__ IKE_HEADER ;
typedef  int /*<<< orphan*/  IKE_CRYPTO_PARAM ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 TYPE_9__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int IKE_HEADER_FLAG_AUTH_ONLY ; 
 int IKE_HEADER_FLAG_COMMIT ; 
 int IKE_HEADER_FLAG_ENCRYPTED ; 
 TYPE_3__* FUNC5 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (void*,int) ; 
 TYPE_1__* FUNC10 (int) ; 

IKE_PACKET *FUNC11(void *data, UINT size, IKE_CRYPTO_PARAM *cparam, bool header_only)
{
	IKE_PACKET *p = NULL;
	BUF *b;
	// Validate arguments
	if (data == NULL)
	{
		return NULL;
	}

	b = FUNC9(data, size);

	if (b->Size < sizeof(IKE_HEADER))
	{
		FUNC1("ISAKMP: Invalid Packet Size\n");
	}
	else
	{
		// Header analysis
		IKE_HEADER *h = (IKE_HEADER *)b->Buf;

		p = FUNC10(sizeof(IKE_PACKET));

		p->MessageSize = FUNC2(h->MessageSize);
		p->InitiatorCookie = FUNC3(h->InitiatorCookie);
		p->ResponderCookie = FUNC3(h->ResponderCookie);
		p->ExchangeType = h->ExchangeType;
		p->FlagEncrypted = (h->Flag & IKE_HEADER_FLAG_ENCRYPTED) ? true : false;
		p->FlagCommit = (h->Flag & IKE_HEADER_FLAG_COMMIT) ? true : false;
		p->FlagAuthOnly = (h->Flag & IKE_HEADER_FLAG_AUTH_ONLY) ? true : false;
		p->MessageId = FUNC2(h->MessageId);

		if (b->Size < FUNC2(h->MessageSize) ||
			FUNC2(h->MessageSize) < sizeof(IKE_HEADER))
		{
			FUNC1("ISAKMP: Invalid Packet Size\n");

			FUNC6(p);
			p = NULL;
		}
		else
		{
			if (header_only == false)
			{
				bool ok = false;
				UCHAR *payload_data;
				UINT payload_size;
				BUF *buf = NULL;

				payload_data = ((UCHAR *)h) + sizeof(IKE_HEADER);
				payload_size = FUNC2(h->MessageSize) - sizeof(IKE_HEADER);

				// Decrypt if it is encrypted
				if (p->FlagEncrypted)
				{
					buf = FUNC5(payload_data, payload_size, cparam);

					if (buf != NULL)
					{
						ok = true;

						payload_data = buf->Buf;
						payload_size = buf->Size;

						p->DecryptedPayload = FUNC0(buf);
					}
				}
				else
				{
					ok = true;
				}

				if (ok == false)
				{
					FUNC1("ISAKMP: Decrypt Failed\n");

					FUNC6(p);
					p = NULL;
				}
				else
				{
					UINT total_read_size;

					// Payload analysis
					p->PayloadList = FUNC7(payload_data,
						payload_size,
						h->NextPayload,
						&total_read_size);

					if (p->DecryptedPayload != NULL)
					{
						p->DecryptedPayload->Size = FUNC8(p->DecryptedPayload->Size, total_read_size);
					}
					else
					{
						p->DecryptedPayload = FUNC9(payload_data, payload_size);
					}
				}

				if (buf != NULL)
				{
					FUNC4(buf);
				}
			}
		}
	}

	FUNC4(b);

	return p;
}