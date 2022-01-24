#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_7__* PointerL7; } ;
struct TYPE_14__ {TYPE_7__* PointerL4; } ;
struct TYPE_13__ {TYPE_7__* PointerL3; } ;
struct TYPE_11__ {TYPE_7__* HeaderPointer; } ;
struct TYPE_12__ {int /*<<< orphan*/  OptionList; TYPE_2__ Headers; TYPE_7__* EchoData; TYPE_7__* Data; } ;
struct TYPE_10__ {TYPE_7__* Payload; TYPE_7__* FragmentHeader; TYPE_7__* RoutingHeader; TYPE_7__* EndPointHeader; TYPE_7__* HopHeader; TYPE_7__* IPv6Header; } ;
struct TYPE_16__ {struct TYPE_16__* HttpLog; struct TYPE_16__* MacHeader; struct TYPE_16__* PacketData; TYPE_6__ L7; TYPE_5__ L4; TYPE_4__ L3; TYPE_3__ ICMPv6HeaderPacketInfo; TYPE_1__ IPv6HeaderPacketInfo; } ;
typedef  TYPE_7__ PKT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(PKT *p)
{
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	FUNC0(p->IPv6HeaderPacketInfo.IPv6Header);
	FUNC0(p->IPv6HeaderPacketInfo.HopHeader);
	FUNC0(p->IPv6HeaderPacketInfo.EndPointHeader);
	FUNC0(p->IPv6HeaderPacketInfo.RoutingHeader);
	FUNC0(p->IPv6HeaderPacketInfo.FragmentHeader);
	FUNC0(p->IPv6HeaderPacketInfo.Payload);
	FUNC0(p->ICMPv6HeaderPacketInfo.Data);
	FUNC0(p->ICMPv6HeaderPacketInfo.EchoData);
	FUNC0(p->ICMPv6HeaderPacketInfo.Headers.HeaderPointer);
	FUNC1(&p->ICMPv6HeaderPacketInfo.OptionList);
	FUNC0(p->L3.PointerL3);
	FUNC0(p->L4.PointerL4);
	FUNC0(p->L7.PointerL7);
	FUNC0(p->PacketData);
	FUNC0(p->MacHeader);
	FUNC0(p->HttpLog);
	FUNC0(p);
}