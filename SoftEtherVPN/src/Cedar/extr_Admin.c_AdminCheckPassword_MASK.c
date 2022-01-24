#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {TYPE_1__* Server; int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_10__ {scalar_t__ ServerType; int /*<<< orphan*/  HashedPassword; } ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  ERR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERR_FARM_MEMBER_HUB_ADMIN ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 TYPE_2__* FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

UINT FUNC10(CEDAR *c, void *random, void *secure_password, char *hubname,
						bool accept_empty_password, bool *is_password_empty)
{
	UCHAR check[SHA1_SIZE];
	bool b_dummy;
	// Validate arguments
	if (c == NULL || random == NULL || secure_password == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}
	if (is_password_empty == NULL)
	{
		is_password_empty = &b_dummy;
	}

	*is_password_empty = false;

	if (hubname == NULL || FUNC7(hubname) == 0)
	{
		// Server admin mode
		FUNC2(c->lock);
		{
			if (accept_empty_password && FUNC6(c->Server->HashedPassword))
			{
				// blank password
				*is_password_empty = true;
			}

			FUNC5(check, c->Server->HashedPassword, random);
		}
		FUNC8(c->lock);

		if (FUNC0(check, secure_password, SHA1_SIZE) != 0)
		{
			// Password incorrect
			return ERR_ACCESS_DENIED;
		}
	}
	else
	{
		HUB *h;

#if	0
		if (c->Server->ServerType == SERVER_TYPE_FARM_MEMBER)
		{
			// In cluster member mode, hub admin mode is disabled
			return ERR_FARM_MEMBER_HUB_ADMIN;
		}
#endif

		// Hub admin mode
		FUNC3(c);
		{
			h = FUNC1(c, hubname);
		}
		FUNC9(c);

		if (h == NULL)
		{
			// Specified hub is not found
			return ERR_HUB_NOT_FOUND;
		}

		FUNC2(h->lock);
		{
			if (accept_empty_password && FUNC6(h->HashedPassword))
			{
				// User specified blank password
				*is_password_empty = true;
			}

			FUNC5(check, h->HashedPassword, random);
		}
		FUNC8(h->lock);

		FUNC4(h);

		if (FUNC0(check, secure_password, SHA1_SIZE) != 0)
		{
			// Incorrect password
			return ERR_ACCESS_DENIED;
		}
	}

	return ERR_NO_ERROR;
}