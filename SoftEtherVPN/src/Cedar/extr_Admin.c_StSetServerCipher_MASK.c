#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_13__ {TYPE_1__* Server; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  String; } ;
struct TYPE_10__ {TYPE_3__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_STR ;
typedef  TYPE_3__ CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

UINT FUNC7(ADMIN *a, RPC_STR *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;

	if (FUNC2(t->String))
	{
		return ERR_INVALID_PARAMETER;
	}

	SERVER_ADMIN_ONLY;

	FUNC5(t->String);

	FUNC0(a, NULL, "LA_SET_SERVER_CIPHER", t->String);

	FUNC3(c->lock);
	{
		FUNC4(c, t->String);
	}
	FUNC6(c->lock);

	FUNC1(s);

	return ERR_NO_ERROR;
}