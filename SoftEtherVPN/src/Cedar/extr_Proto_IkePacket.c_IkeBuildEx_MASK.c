#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
struct TYPE_19__ {scalar_t__ Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_18__ {int Flag; void* MessageSize; void* MessageId; int /*<<< orphan*/  ExchangeType; int /*<<< orphan*/  Version; int /*<<< orphan*/  NextPayload; void* ResponderCookie; void* InitiatorCookie; } ;
struct TYPE_17__ {scalar_t__ FlagEncrypted; TYPE_3__* DecryptedPayload; int /*<<< orphan*/ * PayloadList; scalar_t__ MessageId; scalar_t__ FlagAuthOnly; scalar_t__ FlagCommit; int /*<<< orphan*/  ExchangeType; int /*<<< orphan*/  ResponderCookie; int /*<<< orphan*/  InitiatorCookie; } ;
typedef  TYPE_1__ IKE_PACKET ;
typedef  TYPE_2__ IKE_HEADER ;
typedef  int /*<<< orphan*/  IKE_CRYPTO_PARAM ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 void* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int IKE_HEADER_FLAG_AUTH_ONLY ; 
 int IKE_HEADER_FLAG_COMMIT ; 
 int IKE_HEADER_FLAG_ENCRYPTED ; 
 int /*<<< orphan*/  IKE_VERSION ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 

BUF *FUNC13(IKE_PACKET *p, IKE_CRYPTO_PARAM *cparam, bool use_original_decrypted)
{
	IKE_HEADER h;
	BUF *msg_buf;
	BUF *ret;
	// Validate arguments
	if (p == NULL)
	{
		return NULL;
	}

	if (p->PayloadList == NULL)
	{
		return NULL;
	}

	FUNC12(&h, sizeof(h));
	h.InitiatorCookie = FUNC3(p->InitiatorCookie);
	h.ResponderCookie = FUNC3(p->ResponderCookie);
	h.NextPayload = FUNC7(p->PayloadList);
	h.Version = IKE_VERSION;
	h.ExchangeType = p->ExchangeType;
	h.Flag = (p->FlagEncrypted ? IKE_HEADER_FLAG_ENCRYPTED : 0) |
		(p->FlagCommit ? IKE_HEADER_FLAG_COMMIT : 0) |
		(p->FlagAuthOnly ? IKE_HEADER_FLAG_AUTH_ONLY : 0);
	h.MessageId = FUNC2(p->MessageId);

	if (p->DecryptedPayload != NULL && use_original_decrypted)
	{
		msg_buf = FUNC0(p->DecryptedPayload);
	}
	else
	{
		msg_buf = FUNC5(p->PayloadList);
	}

	if (p->DecryptedPayload != NULL)
	{
		FUNC4(p->DecryptedPayload);
	}

	p->DecryptedPayload = FUNC0(msg_buf);

	if (p->FlagEncrypted)
	{
		BUF *b;
		// Encryption
		b = FUNC6(msg_buf->Buf, msg_buf->Size, cparam);

		if (b == NULL)
		{
			FUNC1("ISAKMP: Packet Encrypt Failed\n");
			FUNC4(msg_buf);
			return NULL;
		}

		FUNC4(msg_buf);

		msg_buf = b;
	}

	h.MessageSize = FUNC2(msg_buf->Size + sizeof(h));

	ret = FUNC8();
	FUNC10(ret, &h, sizeof(h));
	FUNC11(ret, msg_buf);

	FUNC4(msg_buf);

	FUNC9(ret, 0, 0);

	return ret;
}