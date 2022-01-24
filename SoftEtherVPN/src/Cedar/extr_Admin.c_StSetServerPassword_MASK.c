#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_8__ {TYPE_5__* Server; } ;
struct TYPE_7__ {int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  PlainTextPassword; } ;
typedef  TYPE_1__ RPC_SET_PASSWORD ;
typedef  TYPE_2__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  SHA1_SIZE ; 

UINT FUNC5(ADMIN *a, RPC_SET_PASSWORD *t)
{
	SERVER_ADMIN_ONLY;

	if (FUNC4(t->HashedPassword, sizeof(t->HashedPassword)))
	{
		// For JSON-RPC
		FUNC2(t->HashedPassword, t->PlainTextPassword);
	}

	FUNC1(a->Server->HashedPassword, t->HashedPassword, SHA1_SIZE);

	FUNC0(a, NULL, "LA_SET_SERVER_PASSWORD");

	FUNC3(a->Server);

	return ERR_NO_ERROR;
}