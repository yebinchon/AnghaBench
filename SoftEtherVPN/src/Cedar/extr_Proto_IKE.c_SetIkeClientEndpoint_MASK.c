#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  server_ip_str ;
typedef  int /*<<< orphan*/  client_ip_str ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int sorted; } ;
struct TYPE_21__ {scalar_t__ ClientPort; scalar_t__ ServerPort; int Deleting; int /*<<< orphan*/  ServerIP; int /*<<< orphan*/  ClientIP; int /*<<< orphan*/  Id; scalar_t__ LastCommTick; int /*<<< orphan*/  FirstCommTick; int /*<<< orphan*/  ClientId; int /*<<< orphan*/ * L2TP; } ;
struct TYPE_20__ {TYPE_4__* IkeClient; } ;
struct TYPE_19__ {TYPE_9__* ClientList; int /*<<< orphan*/  IPsecSaList; int /*<<< orphan*/  IkeSaList; } ;
struct TYPE_18__ {TYPE_4__* IkeClient; } ;
typedef  TYPE_1__ IPSECSA ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ IKE_SERVER ;
typedef  TYPE_3__ IKE_SA ;
typedef  TYPE_4__ IKE_CLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC12 (TYPE_9__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

IKE_CLIENT *FUNC14(IKE_SERVER *ike, IKE_CLIENT *c, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
	char client_ip_str[MAX_SIZE];
	char server_ip_str[MAX_SIZE];
	IKE_CLIENT *ret = c;
	IKE_CLIENT *cc;
	IKE_CLIENT t;
	// Validate arguments
	if (ike == NULL || c == NULL || client_ip == NULL || client_port == 0 || server_ip == NULL || server_port == 0)
	{
		return NULL;
	}

	if (FUNC0(&c->ClientIP, client_ip) == 0 &&
		FUNC0(&c->ServerIP, server_ip) == 0 &&
		c->ClientPort == client_port &&
		c->ServerPort == server_port)
	{
		// No change
		return ret;
	}

	if (FUNC7(client_port) || FUNC7(server_port))
	{
		// Don't change in the case of Raw socket
		return ret;
	}

	// Search for an existing IKE_CLIENT which exactly matches to combination of the new IP address and the port number
	FUNC1(&t.ClientIP, client_ip, sizeof(IP));
	t.ClientPort = client_port;
	FUNC1(&t.ServerIP, server_ip, sizeof(IP));
	t.ServerPort = server_port;

	cc = FUNC12(ike->ClientList, &t);
	if (cc != NULL && c != cc && cc->Deleting == false && c->L2TP == NULL)
	{
		UINT i;
		// Merge into this existing IKE_CLIENT since it found
		for (i = 0;i < FUNC9(ike->IkeSaList);i++)
		{
			IKE_SA *sa = FUNC8(ike->IkeSaList, i);

			if (sa->IkeClient == c)
			{
				sa->IkeClient = cc;
			}
		}
		for (i = 0;i < FUNC9(ike->IPsecSaList);i++)
		{
			IPSECSA *sa = FUNC8(ike->IPsecSaList, i);

			if (sa->IkeClient == c)
			{
				sa->IkeClient = cc;
			}
		}

		if (cc->LastCommTick < c->LastCommTick)
		{
			FUNC13(cc->ClientId, sizeof(cc->ClientId), c->ClientId);
		}

		cc->FirstCommTick = FUNC11(cc->FirstCommTick, c->FirstCommTick);
		cc->LastCommTick = FUNC10(cc->LastCommTick, c->LastCommTick);

		ret = cc;

		FUNC5(client_ip_str, sizeof(client_ip_str), client_ip);
		FUNC5(server_ip_str, sizeof(server_ip_str), server_ip);

		FUNC2("Merge IKE_CLIENT: %p->%p: %s:%u -> %s:%u\n", c, cc, client_ip_str, client_port, server_ip_str, server_port);

		FUNC6(ike, c, NULL, NULL, "LI_CLIENT_MERGE", c->Id, cc->Id, cc->Id);

		// Remove old IKE_CLIENT from the list and free
		FUNC3(ike->ClientList, c);
		FUNC4(ike, c);
	}
	else
	{
		// Rewrite the end point information of this IKE_CLIENT because not found
		FUNC1(&c->ClientIP, client_ip, sizeof(IP));
		FUNC1(&c->ServerIP, server_ip, sizeof(IP));
		c->ClientPort = client_port;
		c->ServerPort = server_port;

		FUNC5(client_ip_str, sizeof(client_ip_str), client_ip);
		FUNC5(server_ip_str, sizeof(server_ip_str), server_ip);

		FUNC2("Update IKE_CLIENT: %p: %s:%u -> %s:%u\n", c, client_ip_str, client_port, server_ip_str, server_port);

		FUNC6(ike, c, NULL, NULL, "LI_CLIENT_UPDATE");

		ike->ClientList->sorted = false;
	}

	return ret;
}