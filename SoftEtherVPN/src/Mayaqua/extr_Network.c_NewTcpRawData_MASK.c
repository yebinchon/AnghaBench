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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Data; scalar_t__ DstPort; int /*<<< orphan*/  DstIP; scalar_t__ SrcPort; int /*<<< orphan*/  SrcIP; } ;
typedef  TYPE_1__ TCP_RAW_DATA ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 

TCP_RAW_DATA *FUNC3(IP *src_ip, UINT src_port, IP *dst_ip, UINT dst_port)
{
	TCP_RAW_DATA *trd;
	// Validate arguments
	if (dst_ip == NULL || dst_port == 0)
	{
		return NULL;
	}

	trd = FUNC2(sizeof(TCP_RAW_DATA));

	FUNC0(&trd->SrcIP, src_ip, sizeof(IP));
	trd->SrcPort = src_port;

	FUNC0(&trd->DstIP, dst_ip, sizeof(IP));
	trd->DstPort = dst_port;

	trd->Data = FUNC1();

	return trd;
}