#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {TYPE_1__* Server; } ;
struct TYPE_10__ {int /*<<< orphan*/  Id; } ;
struct TYPE_9__ {int /*<<< orphan*/ * IPsecServer; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ ETHERIP_ID ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_3__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int FUNC0 (TYPE_1__*,char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

UINT FUNC4(ADMIN *a, ETHERIP_ID *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	char id[MAX_SIZE];

	SERVER_ADMIN_ONLY;
	NO_SUPPORT_FOR_BRIDGE;
	if (FUNC0(s, "b_support_ipsec") == false || s->IPsecServer == NULL)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC2(id, sizeof(id), t->Id);

	FUNC3(t, sizeof(ETHERIP_ID));
	if (FUNC1(s->IPsecServer, t, id) == false)
	{
		return ERR_OBJECT_NOT_FOUND;
	}

	return ERR_NO_ERROR;
}