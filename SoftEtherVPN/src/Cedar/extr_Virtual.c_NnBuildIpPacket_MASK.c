#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
typedef  scalar_t__ USHORT ;
typedef  void* UINT ;
typedef  void* UCHAR ;
struct TYPE_17__ {scalar_t__ Size; } ;
struct TYPE_16__ {int /*<<< orphan*/  Checksum; void* DstIP; void* SrcIP; void* Protocol; void* TimeToLive; int /*<<< orphan*/  Identification; int /*<<< orphan*/  TotalLength; } ;
typedef  TYPE_1__ IPV4_HEADER ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

BUF *FUNC11(BUF *payload, UINT src_ip, UINT dst_ip, UCHAR protocol, UCHAR ttl)
{
	BUF *ret = FUNC5();
	IPV4_HEADER h;

	if (ttl == 0)
	{
		ttl = 127;
	}

	// IP header
	FUNC10(&h, sizeof(h));
	FUNC3(&h, 4);
	FUNC2(&h, sizeof(IPV4_HEADER) / 4);
	h.TotalLength = FUNC0((USHORT)sizeof(IPV4_HEADER) + payload->Size);
	h.Identification = FUNC6();
	h.TimeToLive = ttl;
	h.Protocol = protocol;
	h.SrcIP = src_ip;
	h.DstIP = dst_ip;

	h.Checksum = FUNC4(&h, sizeof(h));

	FUNC8(ret, &h, sizeof(h));
	FUNC9(ret, payload);

	FUNC7(ret);

	FUNC1(payload);

	return ret;
}