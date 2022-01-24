#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {TYPE_3__* Server; } ;
struct TYPE_13__ {int /*<<< orphan*/  FileData; } ;
struct TYPE_12__ {TYPE_1__* Cedar; TYPE_2__* CfgRw; } ;
struct TYPE_11__ {int /*<<< orphan*/  FileName; } ;
struct TYPE_10__ {int /*<<< orphan*/  Bridge; } ;
typedef  TYPE_3__ SERVER ;
typedef  TYPE_4__ RPC_CONFIG ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

UINT FUNC8(ADMIN *a, RPC_CONFIG *t)
{
	SERVER *s;
	IO *o;
	char filename[MAX_PATH];

	SERVER_ADMIN_ONLY;

	s = a->Server;
	if (s->CfgRw == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	// Write new configuration file
	FUNC4(filename, sizeof(filename), "%s.new", s->CfgRw->FileName);

	o = FUNC2(filename);

	FUNC3(o, t->FileData, FUNC7(t->FileData));

	FUNC1(o);

	FUNC5(s);

	FUNC0(a, NULL, "LA_SET_CONFIG");

	// Reboot server itself
	FUNC6(s->Cedar->Bridge);

	return ERR_NO_ERROR;
}