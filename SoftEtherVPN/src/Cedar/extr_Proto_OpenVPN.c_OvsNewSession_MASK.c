#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  server_ip_str ;
typedef  int /*<<< orphan*/  client_ip_str ;
typedef  void* UINT ;
struct TYPE_13__ {int /*<<< orphan*/  NextSessionId; int /*<<< orphan*/  Now; TYPE_1__* Cedar; int /*<<< orphan*/  SessionList; } ;
struct TYPE_12__ {int /*<<< orphan*/  Id; int /*<<< orphan*/  CreatedTick; TYPE_3__* Server; int /*<<< orphan*/  ServerSessionId; void* Protocol; int /*<<< orphan*/  LastCommTick; int /*<<< orphan*/  ObfuscationMode; void* ServerPort; int /*<<< orphan*/  ServerIp; void* ClientPort; int /*<<< orphan*/  ClientIp; } ;
struct TYPE_11__ {scalar_t__ OpenVPNObfuscation; } ;
typedef  TYPE_2__ OPENVPN_SESSION ;
typedef  TYPE_3__ OPENVPN_SERVER ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,void*,char*,void*,void*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 void* OPENVPN_PROTOCOL_UDP ; 
 scalar_t__ OPENVPN_QUOTA_MAX_NUM_SESSIONS ; 
 scalar_t__ OPENVPN_QUOTA_MAX_NUM_SESSIONS_PER_IP ; 
 int /*<<< orphan*/  OPENVPN_SCRAMBLE_MODE_DISABLED ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_2__* FUNC7 (int) ; 

OPENVPN_SESSION *FUNC8(OPENVPN_SERVER *s, IP *server_ip, UINT server_port, IP *client_ip, UINT client_port, UINT protocol)
{
	OPENVPN_SESSION *se;
	char server_ip_str[MAX_SIZE];
	char client_ip_str[MAX_SIZE];
	// Validate arguments
	if (s == NULL || server_ip == NULL || server_port == 0 || client_ip	== NULL || client_port == 0)
	{
		return NULL;
	}


	if (FUNC4(s, client_ip) > OPENVPN_QUOTA_MAX_NUM_SESSIONS_PER_IP)
	{
		// Number of sessions from the same IP address too many
		return NULL;
	}

	if (FUNC3(s->SessionList) > OPENVPN_QUOTA_MAX_NUM_SESSIONS)
	{
		// Too many OpenVPN sessions
		return NULL;
	}

	se = FUNC7(sizeof(OPENVPN_SESSION));

	se->Server = s;

	FUNC0(&se->ClientIp, client_ip, sizeof(IP));
	se->ClientPort = client_port;

	FUNC0(&se->ServerIp, server_ip, sizeof(IP));
	se->ServerPort = server_port;

	se->ObfuscationMode = s->Cedar->OpenVPNObfuscation ? INFINITE : OPENVPN_SCRAMBLE_MODE_DISABLED;

	se->LastCommTick = s->Now;

	se->Protocol = protocol;

	se->ServerSessionId = FUNC6(se->Server);

	se->CreatedTick = s->Now;

	se->Id = s->NextSessionId;
	s->NextSessionId++;

	FUNC2(server_ip_str, sizeof(server_ip_str), server_ip);
	FUNC2(client_ip_str, sizeof(client_ip_str), client_ip);
	FUNC1("OpenVPN New Session: %s:%u -> %s:%u Proto=%u\n", server_ip_str, server_port,
		client_ip_str, client_port, protocol);

	FUNC5(s, se, NULL, "LO_NEW_SESSION", (protocol == OPENVPN_PROTOCOL_UDP ? "UDP" : "TCP"));

	return se;
}