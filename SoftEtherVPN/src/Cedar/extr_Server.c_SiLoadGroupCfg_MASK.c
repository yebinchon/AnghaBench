#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  realname ;
typedef  int /*<<< orphan*/  note ;
typedef  int /*<<< orphan*/  USERGROUP ;
struct TYPE_8__ {char* Name; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  HUB ;
typedef  TYPE_1__ FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *,int) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 

void FUNC11(HUB *h, FOLDER *f)
{
	wchar_t realname[MAX_SIZE];
	wchar_t note[MAX_SIZE];
	char *name;
	FOLDER *pf;
	POLICY p;
	TRAFFIC t;
	USERGROUP *g;
	// Validate arguments
	if (h == NULL || f == NULL)
	{
		return;
	}

	name = f->Name;

	FUNC4(f, "RealName", realname, sizeof(realname));
	FUNC4(f, "Note", note, sizeof(note));

	pf = FUNC3(f, "Policy");
	if (pf != NULL)
	{
		FUNC9(&p, pf);
	}

	FUNC10(f, "Traffic", &t);

	g = FUNC5(name, realname, note);
	if (g == NULL)
	{
		return;
	}

	if (pf != NULL)
	{
		FUNC7(g, &p);
	}

	FUNC8(g, &t);

	FUNC1(h);
	{
		FUNC0(h, g);
	}
	FUNC2(h);

	FUNC6(g);
}