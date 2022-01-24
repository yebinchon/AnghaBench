#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
struct TYPE_7__ {int IsTunnelMode; void* CryptBlockSize; int /*<<< orphan*/  CryptName; void* ServerPort; int /*<<< orphan*/  ServerIP; void* ClientPort; int /*<<< orphan*/  ClientIP; int /*<<< orphan*/  Lock; int /*<<< orphan*/  Now; int /*<<< orphan*/  SendPacketList; int /*<<< orphan*/  ClientId; int /*<<< orphan*/ * Ike; int /*<<< orphan*/ * IPsec; TYPE_2__* Cedar; void* Id; int /*<<< orphan*/  Ref; } ;
typedef  int /*<<< orphan*/  IPSEC_SERVER ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_1__ ETHERIP_SERVER ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 (int) ; 

ETHERIP_SERVER *FUNC9(CEDAR *cedar, IPSEC_SERVER *ipsec, IKE_SERVER *ike,
								 IP *client_ip, UINT client_port, IP *server_ip, UINT server_port, char *crypt_name,
								 bool is_tunnel_mode, UINT crypt_block_size,
								 char *client_id, UINT id)
{
	ETHERIP_SERVER *s;
	// Validate arguments
	if (cedar == NULL || ipsec == NULL || ike == NULL || client_ip == NULL || server_ip == NULL || client_id == NULL)
	{
		return NULL;
	}

	s = FUNC8(sizeof(ETHERIP_SERVER));

	s->Ref = FUNC5();

	s->Id = id;

	s->Cedar = cedar;
	FUNC0(s->Cedar->ref);
	s->IPsec = ipsec;
	s->Ike = ike;
	s->IsTunnelMode = is_tunnel_mode;

	FUNC6(s->ClientId, sizeof(s->ClientId), client_id);

	s->SendPacketList = FUNC3(NULL);

	s->Now = FUNC7();

	s->Lock = FUNC4();

	FUNC1(&s->ClientIP, client_ip, sizeof(IP));
	s->ClientPort = client_port;

	FUNC1(&s->ServerIP, server_ip, sizeof(IP));
	s->ServerPort = server_port;

	FUNC6(s->CryptName, sizeof(s->CryptName), crypt_name);
	s->CryptBlockSize = crypt_block_size;

	FUNC2(s, "LE_START_MODULE");

	return s;
}