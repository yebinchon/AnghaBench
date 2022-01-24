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
struct TYPE_3__ {int SrcIpAddress; int SrcSubnetMask; int DestIpAddress; int DestSubnetMask; int /*<<< orphan*/  DestSubnetMask6; int /*<<< orphan*/  DestIpAddress6; int /*<<< orphan*/  SrcSubnetMask6; int /*<<< orphan*/  SrcIpAddress6; scalar_t__ IsIPv6; int /*<<< orphan*/  RedirectUrl; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  Loss; int /*<<< orphan*/  Jitter; int /*<<< orphan*/  Delay; scalar_t__ Established; scalar_t__ CheckTcpState; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; scalar_t__ CheckDstMac; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; scalar_t__ CheckSrcMac; int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; int /*<<< orphan*/  DestPortEnd; int /*<<< orphan*/  DestPortStart; int /*<<< orphan*/  SrcPortEnd; int /*<<< orphan*/  SrcPortStart; int /*<<< orphan*/  Protocol; scalar_t__ Discard; int /*<<< orphan*/  Priority; scalar_t__ Active; int /*<<< orphan*/  Note; int /*<<< orphan*/  Id; } ;
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

void FUNC8(PACK *p, ACCESS *a, UINT index, UINT total)
{
	// Validate arguments
	if (a == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "Id", a->Id, index, total);
	FUNC6(p, "Note", a->Note, index, total);
	FUNC0(p, "Active", a->Active, index, total);
	FUNC2(p, "Priority", a->Priority, index, total);
	FUNC0(p, "Discard", a->Discard, index, total);
	if (a->IsIPv6)
	{
		FUNC3(p, "SrcIpAddress", 0xFDFFFFDF, index, total);
		FUNC3(p, "SrcSubnetMask", 0xFFFFFFFF, index, total);
		FUNC3(p, "DestIpAddress", 0xFDFFFFDF, index, total);
		FUNC3(p, "DestSubnetMask", 0xFFFFFFFF, index, total);
	}
	else
	{
		FUNC3(p, "SrcIpAddress", a->SrcIpAddress, index, total);
		FUNC3(p, "SrcSubnetMask", a->SrcSubnetMask, index, total);
		FUNC3(p, "DestIpAddress", a->DestIpAddress, index, total);
		FUNC3(p, "DestSubnetMask", a->DestSubnetMask, index, total);
	}
	FUNC2(p, "Protocol", a->Protocol, index, total);
	FUNC2(p, "SrcPortStart", a->SrcPortStart, index, total);
	FUNC2(p, "SrcPortEnd", a->SrcPortEnd, index, total);
	FUNC2(p, "DestPortStart", a->DestPortStart, index, total);
	FUNC2(p, "DestPortEnd", a->DestPortEnd, index, total);
	//PackAddIntEx(p, "SrcUsernameHash", a->SrcUsernameHash, index, total);
	FUNC5(p, "SrcUsername", a->SrcUsername, index, total);
	//PackAddIntEx(p, "DestUsernameHash", a->DestUsernameHash, index, total);
	FUNC5(p, "DestUsername", a->DestUsername, index, total);
	FUNC0(p, "CheckSrcMac", a->CheckSrcMac, index, total);
	FUNC1(p, "SrcMacAddress", a->SrcMacAddress, sizeof(a->SrcMacAddress), index, total);
	FUNC1(p, "SrcMacMask", a->SrcMacMask, sizeof(a->SrcMacMask), index, total);
	FUNC0(p, "CheckDstMac", a->CheckDstMac, index, total);
	FUNC1(p, "DstMacAddress", a->DstMacAddress, sizeof(a->DstMacAddress), index, total);
	FUNC1(p, "DstMacMask", a->DstMacMask, sizeof(a->DstMacMask), index, total);
	FUNC0(p, "CheckTcpState", a->CheckTcpState, index, total);
	FUNC0(p, "Established", a->Established, index, total);
	FUNC2(p, "Delay", a->Delay, index, total);
	FUNC2(p, "Jitter", a->Jitter, index, total);
	FUNC2(p, "Loss", a->Loss, index, total);
	FUNC0(p, "IsIPv6", a->IsIPv6, index, total);
	FUNC2(p, "UniqueId", a->UniqueId, index, total);
	FUNC5(p, "RedirectUrl", a->RedirectUrl, index, total);
	if (a->IsIPv6)
	{
		FUNC4(p, "SrcIpAddress6", &a->SrcIpAddress6, index, total);
		FUNC4(p, "SrcSubnetMask6", &a->SrcSubnetMask6, index, total);
		FUNC4(p, "DestIpAddress6", &a->DestIpAddress6, index, total);
		FUNC4(p, "DestSubnetMask6", &a->DestSubnetMask6, index, total);
	}
	else
	{
		IPV6_ADDR zero;

		FUNC7(&zero, sizeof(zero));

		FUNC4(p, "SrcIpAddress6", &zero, index, total);
		FUNC4(p, "SrcSubnetMask6", &zero, index, total);
		FUNC4(p, "DestIpAddress6", &zero, index, total);
		FUNC4(p, "DestSubnetMask6", &zero, index, total);
	}
}