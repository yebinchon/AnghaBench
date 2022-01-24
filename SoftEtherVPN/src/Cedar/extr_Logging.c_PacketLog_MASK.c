#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_26__ ;
typedef  struct TYPE_37__   TYPE_1__ ;
typedef  struct TYPE_36__   TYPE_14__ ;
typedef  struct TYPE_35__   TYPE_13__ ;
typedef  struct TYPE_34__   TYPE_12__ ;
typedef  struct TYPE_33__   TYPE_11__ ;
typedef  struct TYPE_32__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  rec ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_46__ {TYPE_7__* Syslog; } ;
struct TYPE_45__ {char* Name; TYPE_26__* LoggingRecordCount; int /*<<< orphan*/  ref; int /*<<< orphan*/  ClientIP; scalar_t__ NormalClient; } ;
struct TYPE_44__ {scalar_t__ DestPort; int /*<<< orphan*/  lock; int /*<<< orphan*/  DestIp; } ;
struct TYPE_43__ {TYPE_5__* UDPHeader; } ;
struct TYPE_42__ {int /*<<< orphan*/  DstPort; } ;
struct TYPE_41__ {TYPE_3__* IPv4Header; } ;
struct TYPE_40__ {scalar_t__ DstIP; } ;
struct TYPE_39__ {TYPE_9__* Server; } ;
struct TYPE_38__ {int c; } ;
struct TYPE_37__ {int SavePacketLog; } ;
struct TYPE_36__ {int /*<<< orphan*/  PacketLogger; int /*<<< orphan*/  Name; TYPE_2__* Cedar; scalar_t__ IsVgsHub; TYPE_13__* Option; int /*<<< orphan*/  HubMacAddr; TYPE_1__ LogSetting; } ;
struct TYPE_35__ {scalar_t__ MaxLoggedPacketsPerMinute; int NoPhysicalIPOnPacketLog; scalar_t__ NoIPv6PacketLog; scalar_t__ NoIPv4PacketLog; } ;
struct TYPE_34__ {int NoLog; int WritePhysicalIP; TYPE_8__* SrcSession; int /*<<< orphan*/  DestPhysicalIP; int /*<<< orphan*/  SrcPhysicalIP; void* DestSessionName; void* SrcSessionName; TYPE_11__* Packet; TYPE_2__* Cedar; } ;
struct TYPE_33__ {scalar_t__ TypeL3; scalar_t__ TypeL4; TYPE_6__ L4; TYPE_4__ L3; int /*<<< orphan*/  MacAddressDest; int /*<<< orphan*/  MacAddressSrc; } ;
struct TYPE_32__ {TYPE_12__* Data; } ;
typedef  TYPE_8__ SESSION ;
typedef  TYPE_9__ SERVER ;
typedef  TYPE_10__ RECORD ;
typedef  TYPE_11__ PKT ;
typedef  TYPE_12__ PACKET_LOG ;
typedef  TYPE_13__ HUB_OPTION ;
typedef  TYPE_14__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_14__*,TYPE_11__*) ; 
 int FUNC2 (TYPE_8__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC3 (TYPE_11__*,int) ; 
 void* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  GSF_DISABLE_DEEP_LOGGING ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_26__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_12__*,char* (*) (TYPE_10__*)) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ L3_ARPV4 ; 
 scalar_t__ L3_IPV4 ; 
 scalar_t__ L3_IPV6 ; 
 scalar_t__ L4_UDP ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ PACKET_LOG_ALL ; 
 scalar_t__ PACKET_LOG_NONE ; 
 char* FUNC13 (TYPE_10__*) ; 
 scalar_t__ SYSLOG_SERVER_AND_HUB_ALL_LOG ; 
 scalar_t__ FUNC14 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_10__*,int) ; 
 TYPE_12__* FUNC21 (int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool FUNC23(HUB *hub, SESSION *src_session, SESSION *dest_session, PKT *packet, UINT64 now)
{
	UINT level;
	PKT *p;
	PACKET_LOG *pl;
	SERVER *s;
	UINT syslog_setting;
	bool no_log = false;
	HUB_OPTION *opt = NULL;
	// Validate arguments
	if (hub == NULL || src_session == NULL || packet == NULL)
	{
		return true;
	}

	s = hub->Cedar->Server;

	if (hub->LogSetting.SavePacketLog == false)
	{
		// Do not take the packet log
		return true;
	}

	if (FUNC22(hub->HubMacAddr, packet->MacAddressSrc, 6) == 0 ||
		FUNC22(hub->HubMacAddr, packet->MacAddressDest, 6) == 0)
	{
		return true;
	}

	opt = hub->Option;

	// Determine the logging level
	level = FUNC1(hub, packet);
	if (level == PACKET_LOG_NONE)
	{
		// Not save
		return true;
	}

	if (hub->Option != NULL)
	{
		if (hub->Option->NoIPv4PacketLog && (packet->TypeL3 == L3_IPV4 || packet->TypeL3 == L3_ARPV4))
		{
			// Do not save any IPv4 packet log
			return true;
		}

		if (hub->Option->NoIPv6PacketLog && packet->TypeL3 == L3_IPV6)
		{
			// Do not save any IPv6 packet log
			return true;
		}
	}

	if (hub->Option != NULL && hub->Option->MaxLoggedPacketsPerMinute != 0)
	{
		// Examine the maximum number of logging target packets per minute
		if (FUNC2(src_session, hub->Option->MaxLoggedPacketsPerMinute, now) == false)
		{
			// Indicate the packet discarding without taking the packet log if exceed
			return false;
		}
	}

	if (true)
	{
		if (FUNC7(GSF_DISABLE_DEEP_LOGGING) != 0)
		{
			no_log = true;
		}

		if (hub->IsVgsHub)
		{
			no_log = false;
		}
	}

	syslog_setting = FUNC14(s);

	// Clone of packet
	p = FUNC3(packet, level == PACKET_LOG_ALL ? true : false);

	// Get the information
	pl = FUNC21(sizeof(PACKET_LOG));

	pl->Cedar = hub->Cedar;
	pl->Packet = p;
	pl->NoLog = no_log;
	pl->SrcSessionName = FUNC4(src_session->Name);
	if (dest_session != NULL)
	{
		pl->DestSessionName = FUNC4(dest_session->Name);
	}
	else
	{
		pl->DestSessionName = FUNC4("");
	}

	if (opt == NULL || opt->NoPhysicalIPOnPacketLog == false)
	{
		if (src_session->NormalClient)
		{
			FUNC17(pl->SrcPhysicalIP, sizeof(pl->SrcPhysicalIP), src_session->ClientIP);
		}

		if (dest_session != NULL && dest_session->NormalClient)
		{
			FUNC17(pl->DestPhysicalIP, sizeof(pl->DestPhysicalIP), dest_session->ClientIP);
		}

		pl->WritePhysicalIP = true;
	}

	if (src_session->LoggingRecordCount != NULL)
	{
		UINT n = 0;
		while (src_session->LoggingRecordCount->c >= 30000)
		{
			FUNC16(50);
			n++;
			if (n >= 5)
			{
				break;
			}
		}
	}

	pl->SrcSession = src_session;
	FUNC0(src_session->ref);

	FUNC9(src_session->LoggingRecordCount);

	if (syslog_setting == SYSLOG_SERVER_AND_HUB_ALL_LOG)
	{
		RECORD rec;
		char *buf;
		wchar_t tmp[1024];
		bool self_syslog_packet = false;

		if (packet->TypeL3 == L3_IPV4 && packet->TypeL4 == L4_UDP)
		{
			if (s->Syslog != NULL)
			{
				FUNC12(s->Syslog->lock);
				{
					if (FUNC11(&s->Syslog->DestIp) == false && s->Syslog->DestPort != 0)
					{
						if (FUNC8(&s->Syslog->DestIp) == packet->L3.IPv4Header->DstIP)
						{
							if (FUNC5(packet->L4.UDPHeader->DstPort) == s->Syslog->DestPort)
							{
								self_syslog_packet = true;
							}
						}
					}
				}
				FUNC19(s->Syslog->lock);
			}
		}

		FUNC20(&rec, sizeof(rec));
		rec.Data = pl;

		buf = FUNC13(&rec);
		FUNC18(tmp, sizeof(tmp), buf);

		if (self_syslog_packet == false)
		{
			FUNC15(s, "PACKET_LOG", hub->Name, tmp);
		}

		FUNC6(buf);
	}
	else
	{
		// Insertion of packet log
		FUNC10(hub->PacketLogger, pl, PacketLogParseProc);
	}

	return true;
}