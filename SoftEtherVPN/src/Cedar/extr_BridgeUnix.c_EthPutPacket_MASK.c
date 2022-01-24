#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msghdr {int msg_iovlen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef  int UINT ;
struct TYPE_4__ {int Socket; int /*<<< orphan*/  Pcap; int /*<<< orphan*/ * Tap; scalar_t__ IsRawIpMode; } ;
typedef  TYPE_1__ ETH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int INVALID_SOCKET ; 
 int MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,void*,int) ; 

void FUNC8(ETH *e, void *data, UINT size)
{
	int s, ret;
	// Validate arguments
	if (e == NULL || data == NULL)
	{
		return;
	}
	if (e->IsRawIpMode)
	{
		FUNC1(e, data, size);
		return;
	}
	if (size < 14 || size > MAX_PACKET_SIZE)
	{
		FUNC2(data);
		return;
	}

	if (e->Tap != NULL)
	{
#ifndef	NO_VLAN
		// tap mode
		FUNC3(e->Tap, data, size);
#endif	// NO_VLAN
		return;
	}

	s = e->Socket;

	if (s == INVALID_SOCKET)
	{
		FUNC2(data);
		return;
	}

	// Send to device
#ifdef BRIDGE_PCAP
	ret = pcap_inject(e->Pcap, data, size);
	if( ret == -1 ){
#ifdef _DEBUG
		pcap_perror(e->Pcap, "inject");
#endif // _DEBUG
		Debug("EthPutPacket: ret:%d size:%d\n", ret, size);
	}
#else // BRIDGE_PCAP
#ifndef	UNIX_LINUX
	ret = FUNC7(s, data, size);
	if (ret<0)
	{
		FUNC0("EthPutPacket: ret:%d errno:%d  size:%d\n", ret, errno, size);
	}
#else	// UNIX_LINUX
	{
		struct iovec msg_iov;
		struct msghdr msg_header;

		msg_iov.iov_base = data;
		msg_iov.iov_len = size;

		msg_header.msg_name = NULL;
		msg_header.msg_namelen = 0;
		msg_header.msg_iov = &msg_iov;
		msg_header.msg_iovlen = 1;
		msg_header.msg_control = NULL;
		msg_header.msg_controllen = 0;
		msg_header.msg_flags = 0;

		ret = sendmsg(s, &msg_header, 0);

		if (ret<0)
		{
			Debug("EthPutPacket: ret:%d errno:%d  size:%d\n", ret, errno, size);
		}
	}
#endif	// UNIX_LINUX
#endif //BRIDGE_PCAP

	FUNC2(data);
}