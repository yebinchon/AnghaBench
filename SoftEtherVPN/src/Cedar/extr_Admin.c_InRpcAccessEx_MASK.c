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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  DestSubnetMask6; int /*<<< orphan*/  DestIpAddress6; int /*<<< orphan*/  SrcSubnetMask6; int /*<<< orphan*/  SrcIpAddress6; void* IsIPv6; int /*<<< orphan*/  RedirectUrl; void* UniqueId; void* Loss; void* Jitter; void* Delay; void* Established; void* CheckTcpState; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; void* CheckDstMac; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; void* CheckSrcMac; int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; void* DestPortEnd; void* DestPortStart; void* SrcPortEnd; void* SrcPortStart; void* Protocol; void* DestSubnetMask; void* DestIpAddress; void* SrcSubnetMask; void* SrcIpAddress; void* Discard; void* Priority; void* Active; int /*<<< orphan*/  Note; void* Id; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ ACCESS ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

void FUNC8(ACCESS *a, PACK *p, UINT index)
{
	// Validate arguments
	if (a == NULL || p == NULL)
	{
		return;
	}

	FUNC7(a, sizeof(ACCESS));
	a->Id = FUNC2(p, "Id", index);
	FUNC6(p, "Note", a->Note, sizeof(a->Note), index);
	a->Active = FUNC0(p, "Active", index);
	a->Priority = FUNC2(p, "Priority", index);
	a->Discard = FUNC0(p, "Discard", index);
	a->SrcIpAddress = FUNC3(p, "SrcIpAddress", index);
	a->SrcSubnetMask = FUNC3(p, "SrcSubnetMask", index);
	a->DestIpAddress = FUNC3(p, "DestIpAddress", index);
	a->DestSubnetMask = FUNC3(p, "DestSubnetMask", index);
	a->Protocol = FUNC2(p, "Protocol", index);
	a->SrcPortStart = FUNC2(p, "SrcPortStart", index);
	a->SrcPortEnd = FUNC2(p, "SrcPortEnd", index);
	a->DestPortStart = FUNC2(p, "DestPortStart", index);
	a->DestPortEnd = FUNC2(p, "DestPortEnd", index);
	//a->SrcUsernameHash = PackGetIntEx(p, "SrcUsernameHash", index);
	FUNC5(p, "SrcUsername", a->SrcUsername, sizeof(a->SrcUsername), index);
	//a->DestUsernameHash = PackGetIntEx(p, "DestUsernameHash", index);
	FUNC5(p, "DestUsername", a->DestUsername, sizeof(a->DestUsername), index);
	a->CheckSrcMac = FUNC0(p, "CheckSrcMac", index);
	FUNC1(p, "SrcMacAddress", a->SrcMacAddress, sizeof(a->SrcMacAddress), index);
	FUNC1(p, "SrcMacMask", a->SrcMacMask, sizeof(a->SrcMacMask), index);
	a->CheckDstMac = FUNC0(p, "CheckDstMac", index);
	FUNC1(p, "DstMacAddress", a->DstMacAddress, sizeof(a->DstMacAddress), index);
	FUNC1(p, "DstMacMask", a->DstMacMask, sizeof(a->DstMacMask), index);
	a->CheckTcpState = FUNC0(p, "CheckTcpState", index);
	a->Established = FUNC0(p, "Established", index);
	a->Delay = FUNC2(p, "Delay", index);
	a->Jitter = FUNC2(p, "Jitter", index);
	a->Loss = FUNC2(p, "Loss", index);
	a->IsIPv6 = FUNC0(p, "IsIPv6", index);
	a->UniqueId = FUNC2(p, "UniqueId", index);
	FUNC5(p, "RedirectUrl", a->RedirectUrl, sizeof(a->RedirectUrl), index);
	if (a->IsIPv6)
	{
		FUNC4(p, "SrcIpAddress6", &a->SrcIpAddress6, index);
		FUNC4(p, "SrcSubnetMask6", &a->SrcSubnetMask6, index);
		FUNC4(p, "DestIpAddress6", &a->DestIpAddress6, index);
		FUNC4(p, "DestSubnetMask6", &a->DestSubnetMask6, index);
	}
}