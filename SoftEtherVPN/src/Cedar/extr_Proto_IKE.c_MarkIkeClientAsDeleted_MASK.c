#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  server_ip_str ;
typedef  int /*<<< orphan*/  client_ip_str ;
struct TYPE_9__ {int Deleting; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ServerIP; int /*<<< orphan*/  ClientIP; } ;
struct TYPE_8__ {int StateHasChanged; } ;
typedef  TYPE_1__ IKE_SERVER ;
typedef  TYPE_2__ IKE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 

void FUNC3(IKE_SERVER *ike, IKE_CLIENT *c)
{
	char client_ip_str[MAX_SIZE];
	char server_ip_str[MAX_SIZE];
	// Validate arguments
	if (ike == NULL || c == NULL)
	{
		return;
	}

	if (c->Deleting)
	{
		return;
	}

	ike->StateHasChanged = true;

	c->Deleting = true;

	FUNC1(client_ip_str, sizeof(client_ip_str), &c->ClientIP);
	FUNC1(server_ip_str, sizeof(server_ip_str), &c->ServerIP);

	FUNC0("Deleting IKE_CLIENT: %p: %s:%u -> %s:%u\n", c, client_ip_str, c->ClientPort, server_ip_str, c->ServerPort);

	FUNC2(ike, c, NULL, NULL, "LI_DELETE_IKE_CLIENT");
}