#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* Cedar; int /*<<< orphan*/  CfgRw; } ;
struct TYPE_5__ {int Bridge; } ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 char* BRIDGE_CONFIG_FILE_NAME ; 
 int /*<<< orphan*/  BRIDGE_CONFIG_TEMPLATE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ ) ; 
 char* SERVER_CONFIG_FILE_NAME ; 
 int /*<<< orphan*/  SERVER_CONFIG_TEMPLATE_NAME ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int server_reset_setting ; 

bool FUNC3(SERVER *s)
{
	// Validate arguments
	bool ret = false;
	FOLDER *root;
	char *server_config_filename = SERVER_CONFIG_FILE_NAME;
	if (s == NULL)
	{
		return false;
	}


	s->CfgRw = FUNC1(&root,
		s->Cedar->Bridge == false ? server_config_filename : BRIDGE_CONFIG_FILE_NAME, false,
		s->Cedar->Bridge == false ? SERVER_CONFIG_TEMPLATE_NAME : BRIDGE_CONFIG_TEMPLATE_NAME);

	if (server_reset_setting)
	{
		FUNC0(root);
		root = NULL;
		server_reset_setting = false;
	}

	if (root == NULL)
	{
		return false;
	}

	ret = FUNC2(s, root);

	FUNC0(root);

	return ret;
}