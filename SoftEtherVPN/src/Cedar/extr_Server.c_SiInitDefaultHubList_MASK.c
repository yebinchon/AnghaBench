#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  o ;
struct TYPE_13__ {int Bridge; } ;
struct TYPE_12__ {int Offline; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  CreatedTime; } ;
struct TYPE_11__ {TYPE_8__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  HUB_OPTION ;
typedef  int /*<<< orphan*/  HUB_LOG ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  SERVER_DEFAULT_BRIDGE_NAME ; 
 int /*<<< orphan*/  SERVER_DEFAULT_HUB_NAME ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

void FUNC10(SERVER *s)
{
	HUB *h;
	HUB_OPTION o;
	HUB_LOG g;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC9(&o, sizeof(o));

	// Configure a default Virtual HUB management options
	FUNC6(&o);

	h = FUNC1(s->Cedar, s->Cedar->Bridge == false ? SERVER_DEFAULT_HUB_NAME : SERVER_DEFAULT_BRIDGE_NAME, &o);
	h->CreatedTime = FUNC8();
	FUNC0(s->Cedar, h);

	if (s->Cedar->Bridge)
	{
		// Randomize the password
		FUNC2(h->HashedPassword, sizeof(h->HashedPassword));
		FUNC2(h->SecurePassword, sizeof(h->SecurePassword));
	}

	h->Offline = true;
	FUNC5(h);

	// Log settings
	FUNC7(&g);
	FUNC4(h, &g);

	FUNC3(h);
}