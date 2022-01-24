#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UPDATE_NOTIFY_PROC ;
typedef  int /*<<< orphan*/  UPDATE_ISFOREGROUND_PROC ;
typedef  int /*<<< orphan*/  UPDATE_CLIENT_SETTING ;
struct TYPE_5__ {int /*<<< orphan*/  Thread; int /*<<< orphan*/  HaltEvent; void* Param; int /*<<< orphan*/  Setting; int /*<<< orphan*/  MyLanguage; int /*<<< orphan*/  MyDate; scalar_t__ MyBuild; int /*<<< orphan*/  SoftwareTitle; int /*<<< orphan*/  SoftwareName; int /*<<< orphan*/  FamilyName; int /*<<< orphan*/  ClientId; int /*<<< orphan*/ * IsForegroundCb; int /*<<< orphan*/ * Callback; } ;
typedef  TYPE_1__ UPDATE_CLIENT ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UpdateClientThreadProc ; 
 TYPE_1__* FUNC5 (int) ; 

UPDATE_CLIENT *FUNC6(UPDATE_NOTIFY_PROC *cb, UPDATE_ISFOREGROUND_PROC *isforeground_cb, void *param, char *family_name, char *software_name, wchar_t *software_title, UINT my_build, UINT64 my_date, char *my_lang, UPDATE_CLIENT_SETTING *current_setting, char *client_id)
{
	UPDATE_CLIENT *c;
	// Validate arguments
	if (family_name == NULL || software_title == NULL || software_name == NULL || my_build == 0 ||
		my_lang == NULL || current_setting == NULL || cb == NULL)
	{
		return NULL;
	}

	c = FUNC5(sizeof(UPDATE_CLIENT));

	c->Callback = cb;
	c->IsForegroundCb = isforeground_cb;

	FUNC3(c->ClientId, sizeof(c->ClientId), client_id);
	FUNC3(c->FamilyName, sizeof(c->FamilyName), family_name);
	FUNC3(c->SoftwareName, sizeof(c->SoftwareName), software_name);
	FUNC4(c->SoftwareTitle, sizeof(c->SoftwareTitle), software_title);
	c->MyBuild = my_build;
	c->MyDate = my_date;
	FUNC3(c->MyLanguage, sizeof(c->MyLanguage), my_lang);

	FUNC0(&c->Setting, current_setting, sizeof(c->Setting));

	c->Param = param;

	c->HaltEvent = FUNC1();

	// Create a thread
	c->Thread = FUNC2(UpdateClientThreadProc, c);

	return c;
}