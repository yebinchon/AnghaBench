#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_name_upper ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  rand ;
typedef  int /*<<< orphan*/  pc_name ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  machine ;
typedef  int /*<<< orphan*/  hub_name_upper ;
typedef  void* UCHAR ;
struct TYPE_24__ {TYPE_14__* Server; } ;
struct TYPE_23__ {char* InProcPrefix; int /*<<< orphan*/  ref; TYPE_1__* Thread; } ;
struct TYPE_22__ {char* Name; int /*<<< orphan*/  SessionCounter; scalar_t__ IsVgsSuperRelayHub; scalar_t__ IsVgsHub; } ;
struct TYPE_21__ {int ServerMode; int InProcMode; int* IpcMacAddress; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  SessionKey32; int /*<<< orphan*/  SessionKey; int /*<<< orphan*/ * Policy; int /*<<< orphan*/  Name; TYPE_5__* Connection; int /*<<< orphan*/  PacketAdapter; int /*<<< orphan*/  DelayedPacketList; int /*<<< orphan*/  ClientStatus; TYPE_4__* Hub; TYPE_1__* Thread; int /*<<< orphan*/  QoS; void* OldTraffic; void* TrafficLock; int /*<<< orphan*/  CancelList; int /*<<< orphan*/  Cancel1; int /*<<< orphan*/  HaltEvent; void* Traffic; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; TYPE_6__* Cedar; int /*<<< orphan*/  ref; void* lock; int /*<<< orphan*/  LoggingRecordCount; } ;
struct TYPE_20__ {int NumTokens; char** Token; } ;
struct TYPE_19__ {int /*<<< orphan*/  ref; } ;
struct TYPE_18__ {scalar_t__ ServerType; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  TYPE_3__ SESSION ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  TYPE_4__ HUB ;
typedef  TYPE_5__ CONNECTION ;
typedef  TYPE_6__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINISTRATOR_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  BRIDGE_USER_NAME ; 
 int /*<<< orphan*/  FUNC2 (char*,int,void**,int) ; 
 int /*<<< orphan*/  CLIENT_STATUS_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC3 (int*,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_14__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  MAX_USERNAME_LEN ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 void* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC22 () ; 
 TYPE_2__* FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (void**,int) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC25 (void**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*) ; 
 scalar_t__ FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 TYPE_3__* FUNC33 (int) ; 

SESSION *FUNC34(CEDAR *cedar, CONNECTION *c, HUB *h, char *username, POLICY *policy, bool inproc_mode, UCHAR *ipc_mac_address)
{
	SESSION *s;
	char name[MAX_SIZE];
	char hub_name_upper[MAX_SIZE];
	char user_name_upper[MAX_USERNAME_LEN + 1];
	// Validate arguments
	if (cedar == NULL || c == NULL || h == NULL || username == NULL || policy == NULL)
	{
		return NULL;
	}

	// Initialize the SESSION object
	s = FUNC33(sizeof(SESSION));

	s->LoggingRecordCount = FUNC16();
	s->lock = FUNC19();
	s->ref = FUNC20();
	s->Cedar = cedar;
	s->ServerMode = true;
	s->CreatedTime = s->LastCommTime = FUNC31();
	s->Traffic = FUNC22();
	s->HaltEvent = FUNC17();
	s->Cancel1 = FUNC14();
	s->CancelList = FUNC15();
	s->Thread = c->Thread;
	s->TrafficLock = FUNC19();
	s->OldTraffic = FUNC22();
	s->QoS = FUNC10(cedar->Server, "b_support_qos");
	FUNC0(s->Thread->ref);
	s->Hub = h;
	s->ClientStatus = CLIENT_STATUS_ESTABLISHED;

	// Delayed packet list
	s->DelayedPacketList = FUNC18(NULL);

	// Packet adapter for the HUB
	s->PacketAdapter = FUNC8();

	s->Connection = c;
	FUNC0(c->ref);

	// Determine the new session name
	FUNC28(hub_name_upper, sizeof(hub_name_upper), h->Name);
	FUNC30(hub_name_upper);
	FUNC28(user_name_upper, sizeof(user_name_upper), username);
	FUNC30(user_name_upper);

	if ((FUNC27(username, ADMINISTRATOR_USERNAME) != 0) && (FUNC27(username, BRIDGE_USER_NAME) != 0) || (cedar->Server == NULL || cedar->Server->ServerType == SERVER_TYPE_STANDALONE))
	{
		if (FUNC12(c->InProcPrefix))
		{
			FUNC6(name, sizeof(name), "SID-%s-%u", user_name_upper, FUNC11(h->SessionCounter));
		}
		else
		{
			FUNC6(name, sizeof(name), "SID-%s-[%s]-%u", user_name_upper, c->InProcPrefix, FUNC11(h->SessionCounter));
		}

		if (h->IsVgsHub || h->IsVgsSuperRelayHub)
		{
			UCHAR rand[5];
			char tmp[32];

			FUNC24(rand, sizeof(rand));

			FUNC2(tmp, sizeof(tmp), rand, sizeof(rand));

			FUNC26(name, sizeof(name), "-");
			FUNC26(name, sizeof(name), tmp);
		}
	}
	else
	{
		UCHAR rand[SHA1_SIZE];
		char tmp[MAX_SIZE];
		FUNC24(rand, sizeof(rand));
		FUNC2(tmp, sizeof(tmp), rand, 3);

		if (FUNC27(username, BRIDGE_USER_NAME) != 0)
		{
			FUNC6(name, sizeof(name), "SID-%s-%s", user_name_upper,
				tmp);
		}
		else
		{
			char pc_name[MAX_SIZE];
			TOKEN_LIST *t;

			FUNC9(tmp, sizeof(tmp));
			t = FUNC23(tmp, ".");
			if (t->NumTokens >= 1)
			{
				FUNC28(pc_name, sizeof(pc_name), t->Token[0]);
			}
			else
			{
				FUNC28(pc_name, sizeof(pc_name), "pc");
			}
			FUNC7(t);

			FUNC30(pc_name);

			FUNC6(name, sizeof(name), "SID-%s-%s-%u", user_name_upper, pc_name,
				FUNC11(h->SessionCounter));
		}
	}

	s->Name = FUNC4(name);
	s->Policy = policy;
	s->InProcMode = inproc_mode;

	// Add a SESSION to the HUB
	FUNC1(h, s);

	// Create a key
	FUNC21(cedar, s->SessionKey, &s->SessionKey32);

	// Generate a MAC address for IPC
	if (s->InProcMode)
	{
		if (ipc_mac_address != NULL)
		{
			FUNC3(s->IpcMacAddress, ipc_mac_address, 6);
		}
		else
		{
			char tmp[MAX_SIZE];
			char machine[MAX_SIZE];
			UCHAR hash[SHA1_SIZE];

			FUNC9(machine, sizeof(machine));

			FUNC6(tmp, sizeof(tmp), "%s@%s@%u", machine, h->Name, s->UniqueId);

			FUNC30(tmp);
			FUNC32(tmp);

			FUNC25(hash, tmp, FUNC29(tmp));

			s->IpcMacAddress[0] = 0xCA;
			s->IpcMacAddress[1] = hash[1];
			s->IpcMacAddress[2] = hash[2];
			s->IpcMacAddress[3] = hash[3];
			s->IpcMacAddress[4] = hash[4];
			s->IpcMacAddress[5] = hash[5];

			FUNC13(tmp, sizeof(tmp), s->IpcMacAddress);
			FUNC5("MAC Address for IPC: %s\n", tmp);
		}
	}

	return s;
}