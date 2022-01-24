#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sign ;
typedef  int /*<<< orphan*/  my_ip ;
struct TYPE_19__ {int bits; int /*<<< orphan*/  is_compatible_bit; } ;
typedef  TYPE_4__ X ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_22__ {int AuthType; char* Username; TYPE_4__* ClientX; int /*<<< orphan*/  ClientK; int /*<<< orphan*/  PlainPassword; int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_21__ {char* HubName; int MaxConnection; int UseEncrypt; int UseCompress; int HalfConnection; int RequireBridgeRoutingMode; int RequireMonitorMode; int NoUdpAcceleration; scalar_t__ DisableQoS; } ;
struct TYPE_20__ {int UseTicket; scalar_t__ Err; int Protocol; char* ClientStr; int ClientVer; int ClientBuild; int /*<<< orphan*/  FirstSock; TYPE_3__* Session; TYPE_1__* Cedar; int /*<<< orphan*/ * Ticket; void* ClientX; int /*<<< orphan*/  Random; } ;
struct TYPE_18__ {int ForceStopFlag; TYPE_2__* UdpAccel; TYPE_6__* ClientOption; TYPE_7__* ClientAuth; } ;
struct TYPE_17__ {int MyPort; int /*<<< orphan*/ * MyKey; int /*<<< orphan*/  MyIp; } ;
struct TYPE_16__ {int ClientId; } ;
typedef  int /*<<< orphan*/  RPC_WINVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  NODE_INFO ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_5__ CONNECTION ;
typedef  TYPE_6__ CLIENT_OPTION ;
typedef  TYPE_7__ CLIENT_AUTH ;

/* Variables and functions */
 int AUTHTYPE_TICKET ; 
#define  CLIENT_AUTHTYPE_ANONYMOUS 132 
#define  CLIENT_AUTHTYPE_CERT 131 
#define  CLIENT_AUTHTYPE_PASSWORD 130 
#define  CLIENT_AUTHTYPE_PLAIN_PASSWORD 129 
#define  CLIENT_AUTHTYPE_SECURE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__**) ; 
 void* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ ERR_DISCONNECTED ; 
 scalar_t__ ERR_PROTOCOL_ERROR ; 
 scalar_t__ ERR_SECURE_DEVICE_OPEN_FAILED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC20 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC21 (char*,char*,TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC22 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (char*) ; 
 int UDP_ACCELERATION_COMMON_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 char* FUNC30 (char*) ; 

bool FUNC31(CONNECTION *c)
{
	PACK *p = NULL;
	CLIENT_AUTH *a;
	CLIENT_OPTION *o;
	X *x;
	bool ret;
	NODE_INFO info;
	UCHAR secure_password[SHA1_SIZE];
	UCHAR sign[4096 / 8];
	UCHAR unique[SHA1_SIZE];
	RPC_WINVER v;
	// Validate arguments
	if (c == NULL)
	{
		return false;
	}

	FUNC27(sign, sizeof(sign));

	a = c->Session->ClientAuth;
	o = c->Session->ClientOption;

	if (c->UseTicket == false)
	{
		switch (a->AuthType)
		{
		case CLIENT_AUTHTYPE_ANONYMOUS:
			// Anonymous authentication
			p = FUNC20(o->HubName, a->Username);
			break;

		case CLIENT_AUTHTYPE_PASSWORD:
			// Password authentication
			FUNC25(secure_password, a->HashedPassword, c->Random);
			p = FUNC22(o->HubName, a->Username, secure_password);
			break;

		case CLIENT_AUTHTYPE_PLAIN_PASSWORD:
			// Plaintext password authentication
			p = FUNC23(o->HubName, a->Username, a->PlainPassword);
			break;

		case CLIENT_AUTHTYPE_CERT:
			// Certificate authentication
			if (a->ClientX != NULL && a->ClientX->is_compatible_bit &&
				a->ClientX->bits != 0 && (a->ClientX->bits / 8) <= sizeof(sign))
			{
				if (FUNC24(sign, c->Random, SHA1_SIZE, a->ClientK, a->ClientX->bits))
				{
					p = FUNC21(o->HubName, a->Username, a->ClientX, sign, a->ClientX->bits / 8);
					c->ClientX = FUNC1(a->ClientX);
				}
			}
			break;

		case CLIENT_AUTHTYPE_SECURE:
			// Authentication by secure device
			if (FUNC0(c, sign, c->Random, &x))
			{
				p = FUNC21(o->HubName, a->Username, x, sign, x->bits / 8);
				c->ClientX = FUNC1(x);
				FUNC5(x);
			}
			else
			{
				c->Err = ERR_SECURE_DEVICE_OPEN_FAILED;
				c->Session->ForceStopFlag = true;
			}
			break;
		}
	}
	else
	{
		// Ticket
		p = FUNC11();
		FUNC19(p, "method", "login");
		FUNC19(p, "hubname", o->HubName);
		FUNC19(p, "username", a->Username);
		FUNC17(p, "authtype", AUTHTYPE_TICKET);
		FUNC16(p, "ticket", c->Ticket, SHA1_SIZE);
	}

	if (p == NULL)
	{
		// Error
		if (c->Err != ERR_SECURE_DEVICE_OPEN_FAILED)
		{
			c->Err = ERR_PROTOCOL_ERROR;
		}
		return false;
	}

	FUNC15(p, c);

	// Protocol
	FUNC17(p, "protocol", c->Protocol);

	// Version, etc.
	FUNC19(p, "hello", c->ClientStr);
	FUNC17(p, "version", c->ClientVer);
	FUNC17(p, "build", c->ClientBuild);
	FUNC17(p, "client_id", c->Cedar->ClientId);

	// The maximum number of connections
	FUNC17(p, "max_connection", o->MaxConnection);
	// Flag to use of cryptography
	FUNC17(p, "use_encrypt", o->UseEncrypt == false ? 0 : 1);
	// Data compression flag
	FUNC17(p, "use_compress", o->UseCompress == false ? 0 : 1);
	// Half connection flag
	FUNC17(p, "half_connection", o->HalfConnection == false ? 0 : 1);

	// Bridge / routing mode flag
	FUNC14(p, "require_bridge_routing_mode", o->RequireBridgeRoutingMode);

	// Monitor mode flag
	FUNC14(p, "require_monitor_mode", o->RequireMonitorMode);

	// VoIP / QoS flag
	FUNC14(p, "qos", o->DisableQoS ? false : true);

	// Bulk transfer support
	FUNC14(p, "support_bulk_on_rudp", true);
	FUNC14(p, "support_hmac_on_bulk_of_rudp", true);

	// UDP recovery support
	FUNC14(p, "support_udp_recovery", true);

	// Unique ID
	FUNC6(unique);
	FUNC16(p, "unique_id", unique, SHA1_SIZE);

	// UDP acceleration function using flag
	if (o->NoUdpAcceleration == false && c->Session->UdpAccel != NULL)
	{
		IP my_ip;

		FUNC27(&my_ip, sizeof(my_ip));

		FUNC14(p, "use_udp_acceleration", true);

		FUNC2(&my_ip, &c->Session->UdpAccel->MyIp, sizeof(IP));
		if (FUNC10(&my_ip))
		{
			if (FUNC9(&my_ip))
			{
				FUNC28(&my_ip);
			}
			else
			{
				FUNC29(&my_ip);
			}
		}

		FUNC18(p, "udp_acceleration_client_ip", &my_ip);
		FUNC17(p, "udp_acceleration_client_port", c->Session->UdpAccel->MyPort);
		FUNC16(p, "udp_acceleration_client_key", c->Session->UdpAccel->MyKey, UDP_ACCELERATION_COMMON_KEY_SIZE);
		FUNC14(p, "support_hmac_on_udp_acceleration", true);
		FUNC14(p, "support_udp_accel_fast_disconnect_detect", true);
	}

	// Brand string for the connection limit
	{
		char *branded_ctos = FUNC30("BRANDED_C_TO_S");
		if(FUNC26(branded_ctos) > 0)
		{
			FUNC19(p, "branded_ctos", branded_ctos);
		}
	}

	// Node information
	FUNC3(&info, c);
	FUNC12(p, &info);

	// OS information
	FUNC7(&v);
	FUNC13(p, &v);

	ret = FUNC8(c->FirstSock, p);
	if (ret == false)
	{
		c->Err = ERR_DISCONNECTED;
	}

	FUNC4(p);

	return ret;
}