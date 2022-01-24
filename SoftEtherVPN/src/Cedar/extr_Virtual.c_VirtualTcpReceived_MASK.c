#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  HostMask; int /*<<< orphan*/  HostIP; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_11__ {int* addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  DstPort; int /*<<< orphan*/  SrcPort; } ;
typedef  TYPE_2__ TCP_HEADER ;
typedef  TYPE_3__ IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ TCP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,TYPE_2__*,void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__) ; 

void FUNC5(VH *v, UINT src_ip, UINT dest_ip, void *data, UINT size, UINT max_l3_size)
{
	TCP_HEADER *tcp;
	UINT src_port, dest_port;
	UINT header_size, buf_size;
	void *buf;
	IP ip1, ip2;
	// Validate arguments
	if (v == NULL || data == NULL)
	{
		return;
	}

	// Get the header
	if (size < TCP_HEADER_SIZE)
	{
		// Size is too small
		return;
	}
	tcp = (TCP_HEADER *)data;
	src_port = FUNC0(tcp->SrcPort);
	dest_port = FUNC0(tcp->DstPort);
	if (src_port == 0 || dest_port == 0)
	{
		// Port number is invalid
		return;
	}
	if (src_ip == dest_ip || src_ip == 0 || src_ip == 0xffffffff || dest_ip == 0 || dest_ip == 0xffffffff)
	{
		// IP address is invalid
		return;
	}
	FUNC4(&ip1, src_ip);
	FUNC4(&ip2, dest_ip);
	if (ip1.addr[0] == 127 || ip2.addr[0] == 127)
	{
		// Loopback IP address can not be specified
		return;
	}
	if (FUNC1(dest_ip, v->HostIP, v->HostMask))
	{
		// Ignore the packets toward the network of the virtual LAN side
		return;
	}
	// Get the header size
	header_size = FUNC2(tcp) * 4;
	if (size < header_size)
	{
		// Header size is invalid
		return;
	}
	// Get the address and size of the buffer
	buf_size = size - header_size;
	buf = (void *)(((UCHAR *)data) + header_size);

	FUNC3(v, src_ip, src_port, dest_ip, dest_port, tcp, buf, buf_size, max_l3_size);
}