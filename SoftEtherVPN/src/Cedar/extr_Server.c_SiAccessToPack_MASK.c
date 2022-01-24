#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zero ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int SrcIpAddress; int SrcSubnetMask; int DestIpAddress; int DestSubnetMask; int /*<<< orphan*/  DestSubnetMask6; int /*<<< orphan*/  DestIpAddress6; int /*<<< orphan*/  SrcSubnetMask6; int /*<<< orphan*/  SrcIpAddress6; scalar_t__ IsIPv6; int /*<<< orphan*/  RedirectUrl; int /*<<< orphan*/  Loss; int /*<<< orphan*/  Jitter; int /*<<< orphan*/  Delay; scalar_t__ Established; scalar_t__ CheckTcpState; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; scalar_t__ CheckDstMac; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; scalar_t__ CheckSrcMac; int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; int /*<<< orphan*/  DestPortEnd; int /*<<< orphan*/  DestPortStart; int /*<<< orphan*/  SrcPortEnd; int /*<<< orphan*/  SrcPortStart; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  Discard; int /*<<< orphan*/  Priority; int /*<<< orphan*/  Active; int /*<<< orphan*/  Note; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  IPV6_ADDR ;
typedef  TYPE_1__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(PACK *p, ACCESS *a, UINT i, UINT total)
{
	// Validate arguments
	if (p == NULL || a == NULL)
	{
		return;
	}

	FUNC6(p, "Note", a->Note, i, total);
	FUNC2(p, "Active", a->Active, i, total);
	FUNC2(p, "Priority", a->Priority, i, total);
	FUNC2(p, "Discard", a->Discard, i, total);
	if (a->IsIPv6)
	{
		FUNC3(p, "SrcIpAddress", 0xFDFFFFDF, i, total);
		FUNC3(p, "SrcSubnetMask", 0xFFFFFFFF, i, total);
		FUNC3(p, "DestIpAddress", 0xFDFFFFDF, i, total);
		FUNC3(p, "DestSubnetMask", 0xFFFFFFFF, i, total);
	}
	else
	{
		FUNC3(p, "SrcIpAddress", a->SrcIpAddress, i, total);
		FUNC3(p, "SrcSubnetMask", a->SrcSubnetMask, i, total);
		FUNC3(p, "DestIpAddress", a->DestIpAddress, i, total);
		FUNC3(p, "DestSubnetMask", a->DestSubnetMask, i, total);
	}
	FUNC2(p, "Protocol", a->Protocol, i, total);
	FUNC2(p, "SrcPortStart", a->SrcPortStart, i, total);
	FUNC2(p, "SrcPortEnd", a->SrcPortEnd, i, total);
	FUNC2(p, "DestPortStart", a->DestPortStart, i, total);
	FUNC2(p, "DestPortEnd", a->DestPortEnd, i, total);
	FUNC5(p, "SrcUsername", a->SrcUsername, i, total);
	FUNC5(p, "DestUsername", a->DestUsername, i, total);
	FUNC0(p, "CheckSrcMac", a->CheckSrcMac, i, total);
	FUNC1(p, "SrcMacAddress", a->SrcMacAddress, sizeof(a->SrcMacAddress), i, total);
	FUNC1(p, "SrcMacMask", a->SrcMacMask, sizeof(a->SrcMacMask), i, total);
	FUNC0(p, "CheckDstMac", a->CheckDstMac, i, total);
	FUNC1(p, "DstMacAddress", a->DstMacAddress, sizeof(a->DstMacAddress), i, total);
	FUNC1(p, "DstMacMask", a->DstMacMask, sizeof(a->DstMacMask), i, total);
	FUNC0(p, "CheckTcpState", a->CheckTcpState, i, total);
	FUNC0(p, "Established", a->Established, i, total);
	FUNC2(p, "Delay", a->Delay, i, total);
	FUNC2(p, "Jitter", a->Jitter, i, total);
	FUNC2(p, "Loss", a->Loss, i, total);
	FUNC5(p, "RedirectUrl", a->RedirectUrl, i, total);
	FUNC0(p, "IsIPv6", a->IsIPv6, i, total);
	if (a->IsIPv6)
	{
		FUNC4(p, "SrcIpAddress6", &a->SrcIpAddress6, i, total);
		FUNC4(p, "SrcSubnetMask6", &a->SrcSubnetMask6, i, total);
		FUNC4(p, "DestIpAddress6", &a->DestIpAddress6, i, total);
		FUNC4(p, "DestSubnetMask6", &a->DestSubnetMask6, i, total);
	}
	else
	{
		IPV6_ADDR zero;

		FUNC7(&zero, sizeof(zero));

		FUNC4(p, "SrcIpAddress6", &zero, i, total);
		FUNC4(p, "SrcSubnetMask6", &zero, i, total);
		FUNC4(p, "DestIpAddress6", &zero, i, total);
		FUNC4(p, "DestSubnetMask6", &zero, i, total);
	}
}