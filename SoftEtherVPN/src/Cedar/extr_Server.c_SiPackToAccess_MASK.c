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
struct TYPE_4__ {int /*<<< orphan*/  DestSubnetMask6; int /*<<< orphan*/  DestIpAddress6; int /*<<< orphan*/  SrcSubnetMask6; int /*<<< orphan*/  SrcIpAddress6; void* IsIPv6; int /*<<< orphan*/  RedirectUrl; void* Loss; void* Jitter; void* Delay; void* Established; void* CheckTcpState; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; void* CheckDstMac; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; void* CheckSrcMac; int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; void* DestPortEnd; void* DestPortStart; void* SrcPortEnd; void* SrcPortStart; void* Protocol; void* DestSubnetMask; void* DestIpAddress; void* SrcSubnetMask; void* SrcIpAddress; void* Discard; void* Priority; void* Active; int /*<<< orphan*/  Note; } ;
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
 TYPE_1__* FUNC7 (int) ; 

ACCESS *FUNC8(PACK *p, UINT i)
{
	ACCESS *a;
	// Validate arguments
	if (p == NULL)
	{
		return NULL;
	}

	a = FUNC7(sizeof(ACCESS));

	FUNC6(p, "Note", a->Note, sizeof(a->Note), i);
	a->Active = FUNC2(p, "Active", i);
	a->Priority = FUNC2(p, "Priority", i);
	a->Discard = FUNC2(p, "Discard", i);
	a->SrcIpAddress = FUNC3(p, "SrcIpAddress", i);
	a->SrcSubnetMask = FUNC3(p, "SrcSubnetMask", i);
	a->DestIpAddress = FUNC3(p, "DestIpAddress", i);
	a->DestSubnetMask = FUNC3(p, "DestSubnetMask", i);
	a->Protocol = FUNC2(p, "Protocol", i);
	a->SrcPortStart = FUNC2(p, "SrcPortStart", i);
	a->SrcPortEnd = FUNC2(p, "SrcPortEnd", i);
	a->DestPortStart = FUNC2(p, "DestPortStart", i);
	a->DestPortEnd = FUNC2(p, "DestPortEnd", i);
	FUNC5(p, "SrcUsername", a->SrcUsername, sizeof(a->SrcUsername), i);
	FUNC5(p, "DestUsername", a->DestUsername, sizeof(a->DestUsername), i);
	a->CheckSrcMac = FUNC0(p, "CheckSrcMac", i);
	FUNC1(p, "SrcMacAddress", a->SrcMacAddress, sizeof(a->SrcMacAddress), i);
	FUNC1(p, "SrcMacMask", a->SrcMacMask, sizeof(a->SrcMacMask), i);
	a->CheckDstMac = FUNC0(p, "CheckDstMac", i);
	FUNC1(p, "DstMacAddress", a->DstMacAddress, sizeof(a->DstMacAddress), i);
	FUNC1(p, "DstMacMask", a->DstMacMask, sizeof(a->DstMacMask), i);
	a->CheckTcpState = FUNC0(p, "CheckTcpState", i);
	a->Established = FUNC0(p, "Established", i);
	a->Delay = FUNC2(p, "Delay", i);
	a->Jitter = FUNC2(p, "Jitter", i);
	a->Loss = FUNC2(p, "Loss", i);
	a->IsIPv6 = FUNC0(p, "IsIPv6", i);
	FUNC5(p, "RedirectUrl", a->RedirectUrl, sizeof(a->RedirectUrl), i);
	if (a->IsIPv6)
	{
		FUNC4(p, "SrcIpAddress6", &a->SrcIpAddress6, i);
		FUNC4(p, "SrcSubnetMask6", &a->SrcSubnetMask6, i);
		FUNC4(p, "DestIpAddress6", &a->DestIpAddress6, i);
		FUNC4(p, "DestSubnetMask6", &a->DestSubnetMask6, i);
	}

	return a;
}