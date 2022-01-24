#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  NextHeader; } ;
struct TYPE_7__ {int TotalHeaderSize; TYPE_2__* IPv6Header; int /*<<< orphan*/ * Payload; } ;
typedef  TYPE_1__ IPV6_HEADER_PACKET_INFO ;
typedef  TYPE_2__ IPV6_HEADER ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

bool FUNC3(IPV6_HEADER_PACKET_INFO *info, UCHAR *buf, UINT size)
{
	// Validate arguments
	if (info == NULL || buf == NULL)
	{
		FUNC2(info, sizeof(IPV6_HEADER_PACKET_INFO));
		return false;
	}

	FUNC2(info, sizeof(IPV6_HEADER_PACKET_INFO));

	// IPv6 header
	if (size < sizeof(IPV6_HEADER))
	{
		// Invalid size
		return false;
	}

	info->IPv6Header = (IPV6_HEADER *)buf;
	buf += sizeof(IPV6_HEADER);
	size -= sizeof(IPV6_HEADER);

	if (FUNC0(info->IPv6Header) != 6)
	{
		// Invalid version
		return false;
	}

	// Analysis of the extension header
	if (FUNC1(info, info->IPv6Header->NextHeader, buf, size) == false)
	{
		return false;
	}

	// Record the header size
	if (info->Payload != NULL)
	{
		info->TotalHeaderSize = (UINT)((UINT64)(info->Payload) - (UINT64)(info->IPv6Header));
	}

	return true;
}