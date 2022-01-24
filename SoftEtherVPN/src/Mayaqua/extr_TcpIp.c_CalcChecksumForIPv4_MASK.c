#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_buffer ;
typedef  int /*<<< orphan*/  USHORT ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_2__ {scalar_t__ Reserved; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  PacketLength; scalar_t__ DstIP; scalar_t__ SrcIP; } ;
typedef  TYPE_1__ IPV4_PSEUDO_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 

USHORT FUNC5(UINT src_ip, UINT dst_ip, UCHAR protocol, void *data, UINT size, UINT real_size)
{
	UCHAR *tmp;
	UINT tmp_size;
	IPV4_PSEUDO_HEADER *ph;
	USHORT ret;
	bool use_free = false;
	UCHAR tmp_buffer[1600];
	// Validate arguments
	if (data == NULL && size != 0)
	{
		return 0;
	}

	if (real_size == 0)
	{
		real_size = size;
	}

	if (real_size == INFINITE)
	{
		real_size = 0;
	}

	tmp_size = size + sizeof(IPV4_PSEUDO_HEADER);

	if (tmp_size > sizeof(tmp_buffer))
	{
		tmp = FUNC4(tmp_size);

		use_free = true;
	}
	else
	{
		tmp = tmp_buffer;
	}

	ph = (IPV4_PSEUDO_HEADER *)tmp;
	ph->SrcIP = src_ip;
	ph->DstIP = dst_ip;
	ph->PacketLength = FUNC1(real_size);
	ph->Protocol = protocol;
	ph->Reserved = 0;

	if (size >= 1)
	{
		FUNC0(((UCHAR *)tmp) + sizeof(IPV4_PSEUDO_HEADER), data, size);
	}

	ret = FUNC3(tmp, tmp_size);

	if (use_free)
	{
		FUNC2(tmp);
	}

	return ret;
}