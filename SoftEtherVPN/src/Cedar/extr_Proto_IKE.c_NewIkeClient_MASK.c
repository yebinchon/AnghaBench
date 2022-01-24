#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  server_ip_str ;
typedef  int /*<<< orphan*/  client_ip_str ;
typedef  void* UINT ;
struct TYPE_10__ {int /*<<< orphan*/  FirstCommTick; int /*<<< orphan*/  LastCommTick; void* ServerPort; int /*<<< orphan*/  TransportModeClientIP; int /*<<< orphan*/  TransportModeServerIP; int /*<<< orphan*/  ServerIP; void* ClientPort; int /*<<< orphan*/  ClientIP; scalar_t__ Id; } ;
struct TYPE_9__ {int /*<<< orphan*/  Now; scalar_t__ CurrentIkeClientId; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ IKE_SERVER ;
typedef  TYPE_2__ IKE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,char*,void*,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC4 (int) ; 

IKE_CLIENT *FUNC5(IKE_SERVER *ike, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
	IKE_CLIENT *c;
	char client_ip_str[MAX_SIZE];
	char server_ip_str[MAX_SIZE];
	// Validate arguments
	if (ike == NULL || client_ip == NULL || server_ip == NULL || client_port == 0 || server_port == 0)
	{
		return NULL;
	}

	c = FUNC4(sizeof(IKE_CLIENT));

	c->Id = ++ike->CurrentIkeClientId;

	FUNC0(&c->ClientIP, client_ip, sizeof(IP));
	c->ClientPort = client_port;

	FUNC0(&c->ServerIP, server_ip, sizeof(IP));
	FUNC0(&c->TransportModeServerIP, server_ip, sizeof(IP));
	FUNC0(&c->TransportModeClientIP, client_ip, sizeof(IP));
	c->ServerPort = server_port;

	c->LastCommTick = ike->Now;
	c->FirstCommTick = ike->Now;

	FUNC2(client_ip_str, sizeof(client_ip_str), client_ip);
	FUNC2(server_ip_str, sizeof(server_ip_str), server_ip);

	FUNC1("New IKE_CLIENT: %p: %s:%u -> %s:%u\n", c, client_ip_str, client_port, server_ip_str, server_port);

	FUNC3(ike, c, NULL, NULL, "LI_NEW_IKE_CLIENT");

	return c;
}