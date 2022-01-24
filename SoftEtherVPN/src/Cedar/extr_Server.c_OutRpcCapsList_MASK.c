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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  ct_key ;
typedef  int /*<<< orphan*/  ct_description ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_5__ {int /*<<< orphan*/  CapsList; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CAPSLIST ;
typedef  TYPE_2__ CAPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 

void FUNC13(PACK *p, CAPSLIST *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC7(p, "CapsList");
	for (i = 0;i < FUNC2(t->CapsList);i++)
	{
		char tmp[MAX_SIZE];
		char ct_key[MAX_PATH];
		wchar_t ct_description[MAX_PATH];
		wchar_t *w;
		CAPS *c = FUNC1(t->CapsList, i);

		FUNC0(tmp, sizeof(tmp), "caps_%s", c->Name);

		FUNC0(ct_key, sizeof(ct_key), "CT_%s", c->Name);

		FUNC11(ct_description, sizeof(ct_description));
		w = FUNC12(ct_key);
		if (FUNC9(w) == false)
		{
			FUNC10(ct_description, sizeof(ct_description), w);
		}
		else
		{
			FUNC8(ct_description, sizeof(ct_description), c->Name);
		}

		FUNC3(p, tmp, c->Value);

		FUNC5(p, "CapsName", c->Name, i, FUNC2(t->CapsList));
		FUNC4(p, "CapsValue", c->Value, i, FUNC2(t->CapsList));
		FUNC6(p, "CapsDescrption", ct_description, i, FUNC2(t->CapsList));
	}
	FUNC7(p, NULL);
}