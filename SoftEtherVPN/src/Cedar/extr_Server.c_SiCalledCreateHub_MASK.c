#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  o ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  log ;
typedef  int VH_OPTION ;
typedef  int UINT ;
struct TYPE_18__ {int Type; int FarmMember_MaxSessionClientBridgeApply; int Offline; int /*<<< orphan*/  SecureNATOption; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  SecurePassword; void* FarmMember_MaxSessionBridge; void* FarmMember_MaxSessionClient; scalar_t__ CreatedTime; scalar_t__ LastLoginTime; scalar_t__ LastCommTime; } ;
struct TYPE_17__ {int SavePacketLog; int PacketLogSwitchType; int SaveSecurityLog; int SecurityLogSwitchType; int /*<<< orphan*/  PacketLogConfig; void* MaxSession; } ;
struct TYPE_16__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ HUB_OPTION ;
typedef  TYPE_2__ HUB_LOG ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* INFINITE ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int NUM_PACKET_LOG ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int) ; 

void FUNC19(SERVER *s, PACK *p)
{
	char name[MAX_SIZE];
	UINT type;
	HUB_OPTION o;
	HUB_LOG log;
	bool save_packet_log;
	UINT packet_log_switch_type;
	UINT packet_log_config[NUM_PACKET_LOG];
	bool save_security_log;
	UINT security_log_switch_type;
	UINT i;
	HUB *h;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	FUNC12(p, "HubName", name, sizeof(name));
	type = FUNC10(p, "HubType");
	FUNC18(&o, sizeof(o));
	o.MaxSession = FUNC10(p, "MaxSession");
	save_packet_log = FUNC10(p, "SavePacketLog");
	packet_log_switch_type = FUNC10(p, "PacketLogSwitchType");
	for (i = 0;i < NUM_PACKET_LOG;i++)
	{
		packet_log_config[i] = FUNC11(p, "PacketLogConfig", i);
	}
	save_security_log = FUNC10(p, "SaveSecurityLog");
	security_log_switch_type = FUNC10(p, "SecurityLogSwitchType");

	FUNC18(&log, sizeof(log));
	log.SavePacketLog = save_packet_log;
	log.PacketLogSwitchType = packet_log_switch_type;
	FUNC2(log.PacketLogConfig, packet_log_config, sizeof(log.PacketLogConfig));
	log.SaveSecurityLog = save_security_log;
	log.SecurityLogSwitchType = security_log_switch_type;

	h = FUNC7(s->Cedar, name, &o);
	h->LastCommTime = h->LastLoginTime = h->CreatedTime = 0;
	FUNC14(h, &log);
	h->Type = type;
	h->FarmMember_MaxSessionClient = FUNC10(p, "MaxSessionClient");
	h->FarmMember_MaxSessionBridge = FUNC10(p, "MaxSessionBridge");
	h->FarmMember_MaxSessionClientBridgeApply = FUNC8(p, "MaxSessionClientBridgeApply");

	if (h->FarmMember_MaxSessionClientBridgeApply == false)
	{
		h->FarmMember_MaxSessionClient = INFINITE;
		h->FarmMember_MaxSessionBridge = INFINITE;
	}

	FUNC9(p, "SecurePassword", h->SecurePassword, SHA1_SIZE);
	FUNC9(p, "HashedPassword", h->HashedPassword, SHA1_SIZE);

	for (i = 0;i < FUNC16(p);i++)
	{
		ACCESS *a = FUNC17(p, i);
		FUNC0(h, a);
		FUNC5(a);
	}

	if (FUNC8(p, "EnableSecureNAT"))
	{
		VH_OPTION t;

		FUNC6(&t, p);

		FUNC2(h->SecureNATOption, &t, sizeof(VH_OPTION));
		FUNC4(h, true);

		FUNC3("SiCalledCreateHub: SecureNAT Created.\n");
	}

	FUNC1(s->Cedar, h);
	h->Offline = true;
	FUNC15(h);

	FUNC13(h);
}