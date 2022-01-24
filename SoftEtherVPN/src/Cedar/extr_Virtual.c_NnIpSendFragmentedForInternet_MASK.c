#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
typedef  int UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_14__ {scalar_t__ num_item; } ;
struct TYPE_13__ {int SrcIP; int DstIP; scalar_t__ Checksum; scalar_t__ Protocol; scalar_t__ TimeToLive; scalar_t__* FlagsAndFragmentOffset; void* Identification; void* TotalLength; int /*<<< orphan*/  TypeOfService; scalar_t__ VersionAndHeaderLength; } ;
struct TYPE_12__ {int SendStateChanged; TYPE_3__* SendQueue; } ;
typedef  TYPE_1__ NATIVE_NAT ;
typedef  TYPE_2__ IPV4_HEADER ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,void*,int) ; 
 int /*<<< orphan*/  DEFAULT_IP_TOS ; 
 scalar_t__ DEFAULT_IP_TTL ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int IP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__* FUNC10 (int) ; 
 scalar_t__ NN_MAX_QUEUE_LENGTH ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

void FUNC13(NATIVE_NAT *t, UCHAR ip_protocol, UINT src_ip, UINT dest_ip, USHORT id, USHORT total_size,
								   USHORT offset, void *data, UINT size, UCHAR ttl)
{
	UCHAR *buf;
	IPV4_HEADER *ip;
	BLOCK *b;
	// Validate arguments
	if (t == NULL || data == NULL)
	{
		return;
	}

	// Memory allocation
	buf = FUNC10(size + IP_HEADER_SIZE);
	ip = (IPV4_HEADER *)&buf[0];

	// IP header construction
	ip->VersionAndHeaderLength = 0;
	FUNC6(ip, 4);
	FUNC4(ip, (IP_HEADER_SIZE / 4));
	ip->TypeOfService = DEFAULT_IP_TOS;
	ip->TotalLength = FUNC1((USHORT)(size + IP_HEADER_SIZE));
	ip->Identification = FUNC1(id);
	ip->FlagsAndFragmentOffset[0] = ip->FlagsAndFragmentOffset[1] = 0;
	FUNC5(ip, (offset / 8));
	if ((offset + size) >= total_size)
	{
		FUNC3(ip, 0x00);
	}
	else
	{
		FUNC3(ip, 0x01);
	}
	ip->TimeToLive = (ttl == 0 ? DEFAULT_IP_TTL : ttl);
	ip->Protocol = ip_protocol;
	ip->Checksum = 0;
	ip->SrcIP = src_ip;
	ip->DstIP = dest_ip;

	// Checksum calculation
	ip->Checksum = FUNC8(ip, IP_HEADER_SIZE);

	// Data copy
	FUNC0(buf + IP_HEADER_SIZE, data, size);

	// Transmission
	b = FUNC11(buf, size + IP_HEADER_SIZE, 0);

	FUNC9(t->SendQueue);
	{
		if (t->SendQueue->num_item <= NN_MAX_QUEUE_LENGTH)
		{
			FUNC7(t->SendQueue, b);

			t->SendStateChanged = true;
		}
		else
		{
			FUNC2(b);
		}
	}
	FUNC12(t->SendQueue);
}