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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int Active; int Discard; int IsIPv6; char* SrcUsername; char* DestUsername; int CheckSrcMac; int CheckDstMac; int CheckTcpState; int Established; char* RedirectUrl; int /*<<< orphan*/  Loss; int /*<<< orphan*/  Jitter; int /*<<< orphan*/  Delay; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; int /*<<< orphan*/  DestPortEnd; int /*<<< orphan*/  DestPortStart; int /*<<< orphan*/  SrcPortEnd; int /*<<< orphan*/  SrcPortStart; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  DestSubnetMask6; int /*<<< orphan*/  DestIpAddress6; int /*<<< orphan*/  SrcSubnetMask6; int /*<<< orphan*/  SrcIpAddress6; int /*<<< orphan*/  DestSubnetMask; int /*<<< orphan*/  DestIpAddress; int /*<<< orphan*/  SrcSubnetMask; int /*<<< orphan*/  SrcIpAddress; int /*<<< orphan*/  Priority; int /*<<< orphan*/  Note; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC7(FOLDER *f, ACCESS *a)
{
	// Validate arguments
	if (f == NULL || a == NULL)
	{
		return;
	}

	FUNC5(f, "Note", a->Note);
	FUNC0(f, "Active", a->Active);
	FUNC1(f, "Priority", a->Priority);
	FUNC0(f, "Discard", a->Discard);
	FUNC0(f, "IsIPv6", a->IsIPv6);

	if (a->IsIPv6 == false)
	{
		FUNC2(f, "SrcIpAddress", a->SrcIpAddress);
		FUNC2(f, "SrcSubnetMask", a->SrcSubnetMask);
		FUNC2(f, "DestIpAddress", a->DestIpAddress);
		FUNC2(f, "DestSubnetMask", a->DestSubnetMask);
	}
	else
	{
		FUNC3(f, "SrcIpAddress6", &a->SrcIpAddress6);
		FUNC3(f, "SrcSubnetMask6", &a->SrcSubnetMask6);
		FUNC3(f, "DestIpAddress6", &a->DestIpAddress6);
		FUNC3(f, "DestSubnetMask6", &a->DestSubnetMask6);
	}

	FUNC1(f, "Protocol", a->Protocol);
	FUNC1(f, "SrcPortStart", a->SrcPortStart);
	FUNC1(f, "SrcPortEnd", a->SrcPortEnd);
	FUNC1(f, "DestPortStart", a->DestPortStart);
	FUNC1(f, "DestPortEnd", a->DestPortEnd);
	FUNC4(f, "SrcUsername", a->SrcUsername);
	FUNC4(f, "DestUsername", a->DestUsername);
	FUNC0(f, "CheckSrcMac", a->CheckSrcMac);

	if (a->CheckSrcMac)
	{
		char tmp[MAX_PATH];

		FUNC6(tmp, sizeof(tmp), a->SrcMacAddress);
		FUNC4(f, "SrcMacAddress", tmp);

		FUNC6(tmp, sizeof(tmp), a->SrcMacMask);
		FUNC4(f, "SrcMacMask", tmp);
	}

	FUNC0(f, "CheckDstMac", a->CheckDstMac);

	if (a->CheckDstMac)
	{
		char tmp[MAX_PATH];

		FUNC6(tmp, sizeof(tmp), a->DstMacAddress);
		FUNC4(f, "DstMacAddress", tmp);

		FUNC6(tmp, sizeof(tmp), a->DstMacMask);
		FUNC4(f, "DstMacMask", tmp);
	}

	FUNC0(f, "CheckTcpState", a->CheckTcpState);
	FUNC0(f, "Established", a->Established);

	FUNC4(f, "RedirectUrl", a->RedirectUrl);

	FUNC1(f, "Delay", a->Delay);
	FUNC1(f, "Jitter", a->Jitter);
	FUNC1(f, "Loss", a->Loss);
}