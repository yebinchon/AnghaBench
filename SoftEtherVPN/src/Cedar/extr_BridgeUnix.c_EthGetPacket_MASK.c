#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/ * Tap; scalar_t__ IsRawIpMode; } ;
typedef  TYPE_1__ ETH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  INFINITE ; 
 int FUNC5 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 

UINT FUNC6(ETH *e, void **data)
{
	// Validate arguments
	if (e == NULL || data == NULL)
	{
		return INFINITE;
	}

#ifdef	UNIX_LINUX
	if (e->IsRawIpMode)
	{
		return EthGetPacketLinuxIpRaw(e, data);
	}
#endif

	if (e->Tap != NULL)
	{
#ifndef	NO_VLAN
		// TAP mode
		void *buf;
		UINT size;

		if (FUNC5(e->Tap, &buf, &size) == false)
		{
			return INFINITE;
		}

		*data = buf;
		return size;
#else
		return INFINITE;
#endif
	}

#if		defined(UNIX_LINUX)
	return EthGetPacketLinux(e, data);
#elif	defined(UNIX_SOLARIS)
	return EthGetPacketSolaris(e, data);
#elif	defined(BRIDGE_PCAP)
	return EthGetPacketPcap(e, data);
#elif	defined(BRIDGE_BPF)
	return EthGetPacketBpf(e, data);
#endif
}