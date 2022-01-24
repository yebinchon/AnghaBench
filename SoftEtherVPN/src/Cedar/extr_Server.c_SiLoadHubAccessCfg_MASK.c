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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_4__ {int IsIPv6; char* SrcUsername; char* DestUsername; int CheckSrcMac; int CheckDstMac; char* RedirectUrl; void* Loss; void* Jitter; void* Delay; void* Established; void* CheckTcpState; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; void* DestPortEnd; void* DestPortStart; void* SrcPortEnd; void* SrcPortStart; void* Protocol; int /*<<< orphan*/  DestSubnetMask6; int /*<<< orphan*/  DestIpAddress6; int /*<<< orphan*/  SrcSubnetMask6; int /*<<< orphan*/  SrcIpAddress6; void* DestSubnetMask; void* DestIpAddress; void* SrcSubnetMask; void* SrcIpAddress; void* Discard; void* Priority; void* Active; int /*<<< orphan*/  Note; } ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HUB_ACCESSLIST_DELAY_MAX ; 
 int /*<<< orphan*/  HUB_ACCESSLIST_JITTER_MAX ; 
 int /*<<< orphan*/  HUB_ACCESSLIST_LOSS_MAX ; 
 void* FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

void FUNC11(HUB *h, FOLDER *f)
{
	ACCESS a;
	char tmp[MAX_PATH];
	// Validate arguments
	if (h == NULL || f == NULL)
	{
		return;
	}

	FUNC10(&a, sizeof(a));

	FUNC7(f, "Note", a.Note, sizeof(a.Note));
	a.Active = FUNC1(f, "Active");
	a.Priority = FUNC3(f, "Priority");
	a.Discard = FUNC1(f, "Discard");
	a.IsIPv6 = FUNC1(f, "IsIPv6");

	if (a.IsIPv6 == false)
	{
		a.SrcIpAddress = FUNC4(f, "SrcIpAddress");
		a.SrcSubnetMask = FUNC4(f, "SrcSubnetMask");
		a.DestIpAddress = FUNC4(f, "DestIpAddress");
		a.DestSubnetMask = FUNC4(f, "DestSubnetMask");
	}
	else
	{
		FUNC5(f, "SrcIpAddress6", &a.SrcIpAddress6);
		FUNC5(f, "SrcSubnetMask6", &a.SrcSubnetMask6);
		FUNC5(f, "DestIpAddress6", &a.DestIpAddress6);
		FUNC5(f, "DestSubnetMask6", &a.DestSubnetMask6);
	}

	a.Protocol = FUNC3(f, "Protocol");
	a.SrcPortStart = FUNC3(f, "SrcPortStart");
	a.SrcPortEnd = FUNC3(f, "SrcPortEnd");
	a.DestPortStart = FUNC3(f, "DestPortStart");
	a.DestPortEnd = FUNC3(f, "DestPortEnd");
	FUNC6(f, "SrcUsername", a.SrcUsername, sizeof(a.SrcUsername));
	FUNC6(f, "DestUsername", a.DestUsername, sizeof(a.DestUsername));
	a.CheckSrcMac = FUNC1(f, "CheckSrcMac");

	if (FUNC2(f, "SrcMacAddress", a.SrcMacAddress, sizeof(a.SrcMacAddress)) == 0)
	{
		FUNC6(f, "SrcMacAddress", tmp, sizeof(tmp));
		if (FUNC9(a.SrcMacAddress, tmp) == false)
		{
			a.CheckSrcMac = false;
		}
	}

	if (FUNC2(f, "SrcMacMask", a.SrcMacMask, sizeof(a.SrcMacMask)) == 0)
	{
		FUNC6(f, "SrcMacMask", tmp, sizeof(tmp));
		if (FUNC9(a.SrcMacMask, tmp) == false)
		{
			a.CheckSrcMac = false;
		}
	}

	a.CheckDstMac = FUNC1(f, "CheckDstMac");

	if (FUNC2(f, "DstMacAddress", a.DstMacAddress, sizeof(a.DstMacAddress)) == 0)
	{
		FUNC6(f, "DstMacAddress", tmp, sizeof(tmp));
		if (FUNC9(a.DstMacAddress, tmp) == false)
		{
			a.CheckDstMac = false;
		}
	}

	if (FUNC2(f, "DstMacMask", a.DstMacMask, sizeof(a.DstMacMask)) == 0)
	{
		FUNC6(f, "DstMacMask", tmp, sizeof(tmp));
		if (FUNC9(a.DstMacMask, tmp) == false)
		{
			a.CheckDstMac = false;
		}
	}

	a.CheckTcpState = FUNC1(f, "CheckTcpState");
	a.Established = FUNC1(f, "Established");
	a.Delay = FUNC8(FUNC3(f, "Delay"), 0, HUB_ACCESSLIST_DELAY_MAX);
	a.Jitter = FUNC8(FUNC3(f, "Jitter"), 0, HUB_ACCESSLIST_JITTER_MAX);
	a.Loss = FUNC8(FUNC3(f, "Loss"), 0, HUB_ACCESSLIST_LOSS_MAX);

	FUNC6(f, "RedirectUrl", a.RedirectUrl, sizeof(a.RedirectUrl));

	FUNC0(h, &a);
}